# Clang flags for x86_64 arch, target or host.

CLANG_CONFIG_x86_64_EXTRA_ASFLAGS :=
CLANG_CONFIG_x86_64_EXTRA_CFLAGS :=
CLANG_CONFIG_x86_64_EXTRA_LDFLAGS :=

# Include common unknown flags
CLANG_CONFIG_x86_64_UNKNOWN_CFLAGS := \
  $(CLANG_CONFIG_UNKNOWN_CFLAGS) \
  -finline-limit=300 \
  -fno-inline-functions-called-once \
  -mfpmath=sse \
  -mbionic \
  -Wno-unused-but-set-variable \
  -Wno-unused-but-set-parameter \
  -Wmaybe-uninitialized \
  -Wno-maybe-uninitialized \
  -Wno-error=maybe-uninitialized \
  -fno-canonical-system-headers \
  -mthumb-interwork \
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
  -fweb

# We don't have any x86_64 flags to substitute yet.
define subst-clang-incompatible-x86_64-flags
  $(1)
endef
