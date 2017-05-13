global kConv_forward_r kConv_backward kConv_backward_r kConv_forward2 kConv_backward_c kConv_forward kConv_forward_c kConv_weight_r kConv_weight kConv_weight_c kConv_backward_my;

kConv_forward = parallel.gpu.CUDAKernel('kFunctions2.ptx','kFunctions2.cu','kConvolve_forward');
kConv_forward2 = parallel.gpu.CUDAKernel('kFunctions2.ptx','kFunctions2.cu','kConvolve_forward');
kConv_weight = parallel.gpu.CUDAKernel('kFunctions.ptx','kFunctions.cu', 'kConvolve_weight');
kConv_backward = parallel.gpu.CUDAKernel('kFunctions2.ptx','kFunctions2.cu', 'kConvolve_backward');
kConv_forward_c = parallel.gpu.CUDAKernel('kFunctions2.ptx','kFunctions2.cu','kConvolve_forward_c');
kConv_weight_c = parallel.gpu.CUDAKernel('kFunctions.ptx','kFunctions.cu', 'kConvolve_weight_c');
kConv_backward_c = parallel.gpu.CUDAKernel('kFunctions.ptx','kFunctions.cu', 'kConvolve_backward_c');
kConv_backward_my = parallel.gpu.CUDAKernel('kFunctions2.ptx','kFunctions2.cu','kConvolve_backward_my');
kConv_forward_r = parallel.gpu.CUDAKernel('kFunctions2.ptx','kFunctions2.cu','kConvolve_forward_reverse');
kConv_weight_r = parallel.gpu.CUDAKernel('kFunctions2.ptx','kFunctions2.cu','kConvolve_weight_reverse');
kConv_backward_r = parallel.gpu.CUDAKernel('kFunctions2.ptx','kFunctions2.cu','kConvolve_backward_reverse');


addpath(genpath('.'));

