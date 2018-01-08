# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := HID-hidraw
### Rules for final target.
LDFLAGS_Debug := \
	-undefined dynamic_lookup \
	-Wl,-no_pie \
	-Wl,-search_paths_first \
	-mmacosx-version-min=10.7 \
	-arch x86_64 \
	-L$(builddir) \
	-stdlib=libc++

LIBTOOLFLAGS_Debug := \
	-undefined dynamic_lookup \
	-Wl,-no_pie \
	-Wl,-search_paths_first

LDFLAGS_Release := \
	-undefined dynamic_lookup \
	-Wl,-no_pie \
	-Wl,-search_paths_first \
	-mmacosx-version-min=10.7 \
	-arch x86_64 \
	-L$(builddir) \
	-stdlib=libc++

LIBTOOLFLAGS_Release := \
	-undefined dynamic_lookup \
	-Wl,-no_pie \
	-Wl,-search_paths_first

LIBS :=

$(builddir)/HID-hidraw.node: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(builddir)/HID-hidraw.node: LIBS := $(LIBS)
$(builddir)/HID-hidraw.node: GYP_LIBTOOLFLAGS := $(LIBTOOLFLAGS_$(BUILDTYPE))
$(builddir)/HID-hidraw.node: TOOLSET := $(TOOLSET)
$(builddir)/HID-hidraw.node:  FORCE_DO_CMD
	$(call do_cmd,solink_module)

all_deps += $(builddir)/HID-hidraw.node
# Add target alias
.PHONY: HID-hidraw
HID-hidraw: $(builddir)/HID-hidraw.node

# Short alias for building this executable.
.PHONY: HID-hidraw.node
HID-hidraw.node: $(builddir)/HID-hidraw.node

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/HID-hidraw.node

