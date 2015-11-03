local_src := $(wildcard $(subdirectory)/src/main/c/*.cpp)
$(eval $(call make-library, $(subdirectory)/libfoo.a, $(local_src)))
