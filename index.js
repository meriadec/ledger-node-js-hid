const { devices, HID } = require('./build/Release/HID')

const getLedger = device =>
  (device.vendorId === 0x2581 && device.productId === 0x3b7c) || device.vendorId === 0x2c97

// console.time('read ledger')
const ledger = devices().find(getLedger)

const device = new HID(ledger.path)

// device.setNonBlocking(1)
device.read((err, res) => {
  if (err || !res) {
    console.log(err)
  } else {
    console.log(Buffer.from(res).toString())
  }
})
// console.timeEnd('read ledger')
