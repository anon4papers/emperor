
D
actor/strided_slice/stackConst*
value
B*
dtype0
F
actor/strided_slice/stack_1Const*
value
B*
dtype0
F
actor/FullyConnected/WConst*
valueB	?*
dtype0
B
actor/FullyConnected/bConst*
valueB	?*
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
D
actor/FullyConnected_1/bConst*
valueB	?*
dtype0
H
actor/strided_slice_1/stack_1Const*
value
B*
dtype0
F
actor/Conv1D/WConst* 
valueB?*
dtype0
:
actor/Conv1D/bConst*
valueB	?*
dtype0
H
actor/strided_slice_2/stack_1Const*
dtype0*
value
B
H
actor/Conv1D_1/WConst* 
valueB?*
dtype0
<
actor/Conv1D_1/bConst*
valueB	?*
dtype0
H
actor/strided_slice_3/stack_1Const*
value
B*
dtype0
H
actor/strided_slice_4/stack_1Const*
dtype0*
value
B
B
actor/Conv1D/ExpandDims/dimConst*
valueB *
dtype0
H
actor/Conv1D_2/WConst* 
valueB?*
dtype0
<
actor/Conv1D_2/bConst*
valueB	?*
dtype0
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
D
actor/FullyConnected_2/bConst*
valueB	?*
dtype0
>
actor/Merge/concat/axisConst*
valueB *
dtype0
I
actor/FullyConnected_3/WConst*
valueB
??*
dtype0
D
actor/FullyConnected_3/bConst*
valueB	?*
dtype0
H
actor/FullyConnected_4/WConst*
valueB	?*
dtype0
C
actor/FullyConnected_4/bConst*
value
B*
dtype0
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
actor/strided_slice_2StridedSliceactor/InputData/Xactor/strided_slice_1/stack_1actor/strided_slice_2/stack_1actor/strided_slice/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
Index0*
T0
?
actor/strided_slice_3StridedSliceactor/InputData/Xactor/strided_slice_2/stack_1actor/strided_slice_3/stack_1actor/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
?
actor/strided_slice_4StridedSliceactor/InputData/Xactor/strided_slice_3/stack_1actor/strided_slice_4/stack_1actor/strided_slice/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
Index0*
T0*
shrink_axis_mask 
?
actor/strided_slice_5StridedSliceactor/InputData/Xactor/strided_slice_5/stackactor/strided_slice_5/stack_1actor/strided_slice/stack_2*
new_axis_mask *
end_mask*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask
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
|
actor/FullyConnected/BiasAddBiasAddactor/FullyConnected/MatMulactor/FullyConnected/b*
T0*
data_formatNHWC
?
actor/FullyConnected_1/BiasAddBiasAddactor/FullyConnected_1/MatMulactor/FullyConnected_1/b*
data_formatNHWC*
T0
?
actor/Conv1D/Conv2DConv2Dactor/Conv1D/ExpandDimsactor/Conv1D/W*
paddingSAME*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
?
actor/Conv1D_1/Conv2DConv2Dactor/Conv1D_1/ExpandDimsactor/Conv1D_1/W*
paddingSAME*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
?
actor/Conv1D_2/Conv2DConv2Dactor/Conv1D_2/ExpandDimsactor/Conv1D_2/W*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
?
actor/FullyConnected_2/BiasAddBiasAddactor/FullyConnected_2/MatMulactor/FullyConnected_2/b*
T0*
data_formatNHWC
H
actor/FullyConnected/ReluReluactor/FullyConnected/BiasAdd*
T0
L
actor/FullyConnected_1/ReluReluactor/FullyConnected_1/BiasAdd*
T0
d
actor/Conv1D/BiasAddBiasAddactor/Conv1D/Conv2Dactor/Conv1D/b*
T0*
data_formatNHWC
j
actor/Conv1D_1/BiasAddBiasAddactor/Conv1D_1/Conv2Dactor/Conv1D_1/b*
data_formatNHWC*
T0
j
actor/Conv1D_2/BiasAddBiasAddactor/Conv1D_2/Conv2Dactor/Conv1D_2/b*
T0*
data_formatNHWC
L
actor/FullyConnected_2/ReluReluactor/FullyConnected_2/BiasAdd*
T0
U
actor/Conv1D/SqueezeSqueezeactor/Conv1D/BiasAdd*
T0*
squeeze_dims

Y
actor/Conv1D_1/SqueezeSqueezeactor/Conv1D_1/BiasAdd*
T0*
squeeze_dims

Y
actor/Conv1D_2/SqueezeSqueezeactor/Conv1D_2/BiasAdd*
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
actor/Merge/concatConcatV2actor/FullyConnected/Reluactor/FullyConnected_1/Reluactor/Flatten/Reshapeactor/Flatten_1/Reshapeactor/Flatten_2/Reshapeactor/FullyConnected_2/Reluactor/Merge/concat/axis*

Tidx0*
T0*
N
?
actor/FullyConnected_3/MatMulMatMulactor/Merge/concatactor/FullyConnected_3/W*
transpose_b( *
T0*
transpose_a( 
?
actor/FullyConnected_3/BiasAddBiasAddactor/FullyConnected_3/MatMulactor/FullyConnected_3/b*
T0*
data_formatNHWC
L
actor/FullyConnected_3/ReluReluactor/FullyConnected_3/BiasAdd*
T0
?
actor/FullyConnected_4/MatMulMatMulactor/FullyConnected_3/Reluactor/FullyConnected_4/W*
T0*
transpose_a( *
transpose_b( 
?
actor/FullyConnected_4/BiasAddBiasAddactor/FullyConnected_4/MatMulactor/FullyConnected_4/b*
T0*
data_formatNHWC
R
actor/FullyConnected_4/SoftmaxSoftmaxactor/FullyConnected_4/BiasAdd*
T0 " 