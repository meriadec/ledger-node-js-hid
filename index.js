const EventEmitter = require('events')
const myEE = new EventEmitter()
myEE.setMaxListeners(0)

const { devices, HID } = require('./build/Release/HID')

let timeoutDetection = null

const listenDevices = {
  start: (delay = 100) => {
    let listDevices = devices()

    const flatDevice = device => device.path

    const getFlatDevices = () => [...new Set(devices().map(device => flatDevice(device)))]
    const getDeviceByIds = ids => listDevices.find(device => flatDevice(device) === ids)

    let lastDevices = getFlatDevices()

    const checkDevices = () => {
      timeoutDetection = setTimeout(() => {
        const currentDevices = getFlatDevices()

        const addDevice = currentDevices.find(device => !lastDevices.includes(device))
        const removeDevice = lastDevices.find(device => !currentDevices.includes(device))

        if (addDevice) {
          listDevices = devices()
          myEE.emit('add', getDeviceByIds(addDevice))
        }

        if (removeDevice) {
          myEE.emit('remove', getDeviceByIds(removeDevice))
          listDevices = listDevices.filter(device => flatDevice(device) === removeDevice)
        }

        lastDevices = currentDevices

        checkDevices()
      }, delay)
    }

    checkDevices()
  },
  stop: () => clearTimeout(timeoutDetection),
  events: myEE,
}

module.exports = {
  devices,
  HID,
  listenDevices,
}
