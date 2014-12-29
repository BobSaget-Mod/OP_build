# Copyright (C) 2014 The SaberMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_DISABLE_O3 := \
	libziparchive \
	libziparchive-host \
	libjni_filtershow_filters \
	bluetooth.default \
	libstagefright_webm \
	libjavacore \
	net_net_gyp \
	content_content_renderer_gyp \
	third_party_WebKit_Source_modules_modules_gyp \
	third_party_WebKit_Source_platform_blink_platform_gyp \
	third_party_WebKit_Source_core_webcore_remaining_gyp \
	third_party_angle_src_translator_lib_gyp \
	third_party_WebKit_Source_core_webcore_generated_gyp

ifneq (1,$(words $(filter $(LOCAL_DISABLE_O3), $(LOCAL_MODULE))))
ifndef LOCAL_CONLYFLAGS
LOCAL_CONLYFLAGS += -O2 \
	-finline-functions \
	-funswitch-loops \
	-fpredictive-commoning \
	-fgcse-after-reload \
	-ftree-loop-distribute-patterns \
	-ftree-slp-vectorize \
	-fvect-cost-model \
	-ftree-partial-pre \
	-fipa-cp-clone
else
LOCAL_CONLYFLAGS := -O2 \
	-finline-functions \
	-funswitch-loops \
	-fpredictive-commoning \
	-fgcse-after-reload \
	-ftree-loop-distribute-patterns \
	-ftree-slp-vectorize \
	-fvect-cost-model \
	-ftree-partial-pre \
	-fipa-cp-clone
endif

ifdef LOCAL_CPPFLAGS
LOCAL_CPPFLAGS += -O2 \
	-finline-functions \
	-funswitch-loops \
	-fpredictive-commoning \
	-fgcse-after-reload \
	-ftree-loop-distribute-patterns \
	-ftree-slp-vectorize \
	-fvect-cost-model \
	-ftree-partial-pre \
	-fipa-cp-clone
else
LOCAL_CPPFLAGS := -O2 \
	-finline-functions \
	-funswitch-loops \
	-fpredictive-commoning \
	-fgcse-after-reload \
	-ftree-loop-distribute-patterns \
	-ftree-slp-vectorize \
	-fvect-cost-model \
	-ftree-partial-pre \
	-fipa-cp-clone
endif
endif
#####
