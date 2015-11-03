local_dir := lib/bar
local_lib := $(local_dir)/libbar.a
local_src := $(addprefix $(local_dir)/,Bar.cpp)
local_objs := $(subst .cpp,.o,$(local_src))
libraries += $(local_lib)
sources += $(local_src)
$(local_lib): $(local_objs)
 $(AR) $(ARFLAGS) $@ $^
