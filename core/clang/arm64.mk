# Clang flags for arm64 arch, target or host.

CLANG_CONFIG_arm64_EXTRA_ASFLAGS := \
  -no-integrated-as

CLANG_CONFIG_arm64_EXTRA_CFLAGS := \
  -no-integrated-as

CLANG_CONFIG_arm64_EXTRA_LDFLAGS :=

# Include common unknown flags
CLANG_CONFIG_arm64_UNKNOWN_CFLAGS := \
  $(CLANG_CONFIG_UNKNOWN_CFLAGS) \
  -fgcse-after-reload \
  -frerun-cse-after-loop \
  -frename-registers \
  -fno-strict-volatile-bitfields \
  -fno-align-jumps \
  -frename-registers \
  -fno-builtin-sin \
  -fno-caller-saves \
  -fno-early-inlining \
  -fno-move-loop-invariants \
  -fno-partial-inlining \
  -fno-strict-volatile-bitfields \
  -fno-tree-copy-prop \
  -fno-tree-loop-optimize \
  -funsafe-loop-optimizations \
  -fno-vect-cost-model \
  -fno-ipa-cp-clone \
  -fsection-anchors \
  -ftree-loop-im \
  -ftree-loop-ivcanon \
  -fgcse-sm \
  -fgcse-las \
  -fweb \
  -Wa,--noexecstack

# We don't have any arm64 flags to substitute yet.
define subst-clang-incompatible-arm64-flags
  $(1)
endef
