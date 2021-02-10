xcrun clang++ -v -Xclang -fopenmp -lomp -ltorch -std=c++2a -stdlib=libc++ -lc10\
	-lcaffe2_detectron_ops -lcaffe2_module_test_dynamic -lcaffe2_observers -lfbjni\
	-lfmt.7.0.3 -lfmt.7 -lfmt -liomp5 -ljitbackend_test -lprocess_group_agent\
	-lpytorch_jni -lshm -ltensorpipe_agent -ltorch -ltorch_cpu -ltorch_global_deps\
	-ltorchbind_test one.cpp -o one
