
D
actor/strided_slice/stackConst*
dtype0*
value
B
F
actor/strided_slice/stack_1Const*
value
B*
dtype0
F
actor/FullyConnected/WConst*
valueB	?*
dtype0
F
actor/strided_slice_1/stackConst*
value
B*
dtype0
H
actor/FullyConnected_1/WConst*
valueB	?*
dtype0
H
actor/strided_slice_1/stack_1Const*
dtype0*
value
B
F
actor/Conv1D/WConst* 
valueB?*
dtype0
H
actor/strided_slice_2/stack_1Const*
dtype0*
value
B
H
actor/Conv1D_1/WConst*
dtype0* 
valueB?
H
actor/strided_slice_3/stack_1Const*
value
B*
dtype0
H
actor/strided_slice_4/stack_1Const*
value
B*
dtype0
B
actor/Conv1D/ExpandDims/dimConst*
valueB *
dtype0
H
actor/Conv1D_2/WConst*
dtype0* 
valueB?
F
actor/Flatten/Reshape/shapeConst*
value
B*
dtype0
F
actor/strided_slice_5/stackConst*
value
B*
dtype0
H
actor/strided_slice_5/stack_1Const*
dtype0*
value
B
F
actor/strided_slice/stack_2Const*
dtype0*
value
B
H
actor/FullyConnected_2/WConst*
valueB	?*
dtype0
>
actor/Merge/concat/axisConst*
dtype0*
valueB 
I
actor/FullyConnected_3/WConst*
dtype0*
valueB
??
I
actor/FullyConnected_4/WConst*
dtype0*
valueB
??
I
actor/FullyConnected_5/WConst*
valueB
??*
dtype0
I
actor/FullyConnected_6/WConst*
valueB
??*
dtype0
I
actor/FullyConnected_7/WConst*
valueB
??*
dtype0
H
actor/FullyConnected_8/WConst*
dtype0*
valueB	?
O
actor/InputData/XPlaceholder*
dtype0* 
shape:?????????
?
actor/strided_sliceStridedSliceactor/InputData/Xactor/strided_slice/stackactor/strided_slice/stack_1actor/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*
T0*
Index0
?
actor/strided_slice_1StridedSliceactor/InputData/Xactor/strided_slice_1/stackactor/strided_slice_1/stack_1actor/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*
Index0*
T0
?
actor/strided_slice_2StridedSliceactor/InputData/Xactor/strided_slice_1/stack_1actor/strided_slice_2/stack_1actor/strided_slice/stack_2*
end_mask*
T0*
Index0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask 
?
actor/strided_slice_3StridedSliceactor/InputData/Xactor/strided_slice_2/stack_1actor/strided_slice_3/stack_1actor/strided_slice/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*
Index0*
T0
?
actor/strided_slice_4StridedSliceactor/InputData/Xactor/strided_slice_3/stack_1actor/strided_slice_4/stack_1actor/strided_slice/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
Index0*
T0
?
actor/strided_slice_5StridedSliceactor/InputData/Xactor/strided_slice_5/stackactor/strided_slice_5/stack_1actor/strided_slice/stack_2*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
Index0*
T0
?
actor/FullyConnected/MatMulMatMulactor/strided_sliceactor/FullyConnected/W*
transpose_a( *
transpose_b( *
T0
?
actor/FullyConnected_1/MatMulMatMulactor/strided_slice_1actor/FullyConnected_1/W*
T0*
transpose_a( *
transpose_b( 
n
actor/Conv1D/ExpandDims
ExpandDimsactor/strided_slice_2actor/Conv1D/ExpandDims/dim*

Tdim0*
T0
p
actor/Conv1D_1/ExpandDims
ExpandDimsactor/strided_slice_3actor/Conv1D/ExpandDims/dim*

Tdim0*
T0
p
actor/Conv1D_2/ExpandDims
ExpandDimsactor/strided_slice_4actor/Conv1D/ExpandDims/dim*

Tdim0*
T0
?
actor/FullyConnected_2/MatMulMatMulactor/strided_slice_5actor/FullyConnected_2/W*
T0*
transpose_a( *
transpose_b( 
G
actor/FullyConnected/ReluReluactor/FullyConnected/MatMul*
T0
K
actor/FullyConnected_1/ReluReluactor/FullyConnected_1/MatMul*
T0
?
actor/Conv1D/Conv2DConv2Dactor/Conv1D/ExpandDimsactor/Conv1D/W*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
?
actor/Conv1D_1/Conv2DConv2Dactor/Conv1D_1/ExpandDimsactor/Conv1D_1/W*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
	dilations
*
T0
?
actor/Conv1D_2/Conv2DConv2Dactor/Conv1D_2/ExpandDimsactor/Conv1D_2/W*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
	dilations
*
T0
K
actor/FullyConnected_2/ReluReluactor/FullyConnected_2/MatMul*
T0
T
actor/Conv1D/SqueezeSqueezeactor/Conv1D/Conv2D*
squeeze_dims
*
T0
X
actor/Conv1D_1/SqueezeSqueezeactor/Conv1D_1/Conv2D*
squeeze_dims
*
T0
X
actor/Conv1D_2/SqueezeSqueezeactor/Conv1D_2/Conv2D*
squeeze_dims
*
T0
8
actor/Conv1D/ReluReluactor/Conv1D/Squeeze*
T0
<
actor/Conv1D_1/ReluReluactor/Conv1D_1/Squeeze*
T0
<
actor/Conv1D_2/ReluReluactor/Conv1D_2/Squeeze*
T0
g
actor/Flatten/ReshapeReshapeactor/Conv1D/Reluactor/Flatten/Reshape/shape*
T0*
Tshape0
k
actor/Flatten_1/ReshapeReshapeactor/Conv1D_1/Reluactor/Flatten/Reshape/shape*
T0*
Tshape0
k
actor/Flatten_2/ReshapeReshapeactor/Conv1D_2/Reluactor/Flatten/Reshape/shape*
T0*
Tshape0
?
actor/Merge/concatConcatV2actor/FullyConnected/Reluactor/FullyConnected_1/Reluactor/Flatten/Reshapeactor/Flatten_1/Reshapeactor/Flatten_2/Reshapeactor/FullyConnected_2/Reluactor/Merge/concat/axis*
N*

Tidx0*
T0
?
actor/FullyConnected_3/MatMulMatMulactor/Merge/concatactor/FullyConnected_3/W*
T0*
transpose_a( *
transpose_b( 
K
actor/FullyConnected_3/ReluReluactor/FullyConnected_3/MatMul*
T0
?
actor/FullyConnected_4/MatMulMatMulactor/FullyConnected_3/Reluactor/FullyConnected_4/W*
transpose_a( *
transpose_b( *
T0
K
actor/FullyConnected_4/ReluReluactor/FullyConnected_4/MatMul*
T0
?
actor/FullyConnected_5/MatMulMatMulactor/FullyConnected_4/Reluactor/FullyConnected_5/W*
T0*
transpose_a( *
transpose_b( 
K
actor/FullyConnected_5/ReluReluactor/FullyConnected_5/MatMul*
T0
?
actor/FullyConnected_6/MatMulMatMulactor/FullyConnected_5/Reluactor/FullyConnected_6/W*
transpose_a( *
transpose_b( *
T0
K
actor/FullyConnected_6/ReluReluactor/FullyConnected_6/MatMul*
T0
?
actor/FullyConnected_7/MatMulMatMulactor/FullyConnected_6/Reluactor/FullyConnected_7/W*
transpose_a( *
transpose_b( *
T0
K
actor/FullyConnected_7/ReluReluactor/FullyConnected_7/MatMul*
T0
?
actor/FullyConnected_8/MatMulMatMulactor/FullyConnected_7/Reluactor/FullyConnected_8/W*
T0*
transpose_a( *
transpose_b( 
Q
actor/FullyConnected_8/SoftmaxSoftmaxactor/FullyConnected_8/MatMul*
T0 " 