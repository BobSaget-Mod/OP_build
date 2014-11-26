# Clang flags for mips64 arch, target or host.

CLANG_CONFIG_mips64_EXTRA_ASFLAGS :=
CLANG_CONFIG_mips64_EXTRA_CFLAGS :=
CLANG_CONFIG_mips64_EXTRA_LDFLAGS :=

# Include common unknown flags
CLANG_CONFIG_mips64_UNKNOWN_CFLAGS := \
  $(CLANG_CONFIG_UNKNOWN_CFLAGS) \
  -fno-strict-volatile-bitfields \
  -fgcse-after-reload \
  -frerun-cse-after-loop \
  -frename-registers \
  -fno-align-jumps \
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
  -msynci \
  -mno-fused-madd

# We don't have any mips64 flags to substitute yet.
define subst-clang-incompatible-mips64-flags
  $(1)
endef
