??
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint?
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(?
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
?
StatelessWhile

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint

@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements#
handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
&
	ZerosLike
x"T
y"T"	
Ttype"serve*2.6.02v2.6.0-rc2-32-g919f693420e8??
J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  C

NoOpNoOp
?
Const_2Const"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B By
k
created_variables
	resources
trackable_objects
initializers

assets

signatures
 
 
 
 
 
 
y
serving_default_inputsPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
{
serving_default_inputs_1Placeholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputsserving_default_inputs_1ConstConst_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:?????????  :?????????
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference_signature_wrapper_2042
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameConst_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *&
f!R
__inference__traced_save_2069
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__traced_restore_2079??
?	
?
map_while_cond_1805$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1$
 map_while_less_map_strided_slice:
6map_while_map_while_cond_1805___redundant_placeholder0
map_while_identity
?
map/while/LessLessmap_while_placeholder map_while_less_map_strided_slice"/device:CPU:0*
T0*
_output_shapes
: 2
map/while/Less?
map/while/Less_1Less map_while_map_while_loop_countermap_while_map_strided_slice"/device:CPU:0*
T0*
_output_shapes
: 2
map/while/Less_1?
map/while/LogicalAnd
LogicalAndmap/while/Less_1:z:0map/while/Less:z:0"/device:CPU:0*
_output_shapes
: 2
map/while/LogicalAnd~
map/while/IdentityIdentitymap/while/LogicalAnd:z:0"/device:CPU:0*
T0
*
_output_shapes
: 2
map/while/Identity"1
map_while_identitymap/while/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : :: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
?
F
 __inference__traced_restore_2079
file_prefix

identity_1??
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
:*
dtypes
22
	RestoreV29
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpd
IdentityIdentityfile_prefix^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

IdentityX

Identity_1IdentityIdentity:output:0*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*
_input_shapes
: :C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?

?
"__inference_signature_wrapper_2042

inputs
inputs_1	
unknown
	unknown_0
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1unknown	unknown_0*
Tin
2	*
Tout
2*B
_output_shapes0
.:?????????  :?????????
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? * 
fR
__inference_pruned_20282
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????  2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????
2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:?????????:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs_1:

_output_shapes
: :

_output_shapes
: 
?^
?
__inference_pruned_2028

inputs
inputs_1	-
)scale_to_0_1_min_and_max_identity_2_input-
)scale_to_0_1_min_and_max_identity_3_input
identity

identity_1??
map/while/loop_counterConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
map/while/loop_counterg
	map/ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
	map/Const?
!map/TensorArrayV2_1/element_shapeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB :
?????????2#
!map/TensorArrayV2_1/element_shape`
inputs_copyIdentityinputs*
T0*'
_output_shapes
:?????????2
inputs_copy?
SqueezeSqueezeinputs_copy:output:0"/device:CPU:0*
T0*#
_output_shapes
:?????????*
squeeze_dims
2	
Squeezee
	map/ShapeShapeSqueeze:output:0"/device:CPU:0*
T0*
_output_shapes
:2
	map/Shape?
map/strided_slice/stackConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB: 2
map/strided_slice/stack?
map/strided_slice/stack_1Const"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB:2
map/strided_slice/stack_1?
map/strided_slice/stack_2Const"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB:2
map/strided_slice/stack_2?
map/strided_sliceStridedSlicemap/Shape:output:0 map/strided_slice/stack:output:0"map/strided_slice/stack_1:output:0"map/strided_slice/stack_2:output:0"/device:CPU:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
map/strided_slice?
map/TensorArrayV2_1TensorListReserve*map/TensorArrayV2_1/element_shape:output:0map/strided_slice:output:0"/device:CPU:0*
_output_shapes
: *
element_dtype0*

shape_type02
map/TensorArrayV2_1?
map/TensorArrayUnstack/ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB 2
map/TensorArrayUnstack/Const?
+map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorSqueeze:output:0%map/TensorArrayUnstack/Const:output:0"/device:CPU:0*
_output_shapes
: *
element_dtype0*

shape_type02-
+map/TensorArrayUnstack/TensorListFromTensor?
	map/whileStatelessWhilemap/while/loop_counter:output:0map/strided_slice:output:0map/Const:output:0map/TensorArrayV2_1:handle:0map/strided_slice:output:0;map/TensorArrayUnstack/TensorListFromTensor:output_handle:0"/device:CPU:0*
T

2*
_lower_using_switch_merge(*
_num_original_outputs* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
map_while_body_1806*
condR
map_while_cond_1805*
output_shapes
: : : : : : 2
	map/while?
4map/TensorArrayV2Stack/TensorListStack/element_shapeConst"/device:CPU:0*
_output_shapes
:*
dtype0*!
valueB"           26
4map/TensorArrayV2Stack/TensorListStack/element_shape?
&map/TensorArrayV2Stack/TensorListStackTensorListStackmap/while:output:3=map/TensorArrayV2Stack/TensorListStack/element_shape:output:0"/device:CPU:0*/
_output_shapes
:?????????  *
element_dtype02(
&map/TensorArrayV2Stack/TensorListStack?
 scale_to_0_1/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 scale_to_0_1/min_and_max/sub_1/x?
#scale_to_0_1/min_and_max/Identity_2Identity)scale_to_0_1_min_and_max_identity_2_input*
T0*
_output_shapes
: 2%
#scale_to_0_1/min_and_max/Identity_2?
scale_to_0_1/min_and_max/sub_1Sub)scale_to_0_1/min_and_max/sub_1/x:output:0,scale_to_0_1/min_and_max/Identity_2:output:0*
T0*
_output_shapes
: 2 
scale_to_0_1/min_and_max/sub_1?
scale_to_0_1/subSub/map/TensorArrayV2Stack/TensorListStack:tensor:0"scale_to_0_1/min_and_max/sub_1:z:0*
T0*/
_output_shapes
:?????????  2
scale_to_0_1/sub?
scale_to_0_1/zeros_like	ZerosLikescale_to_0_1/sub:z:0*
T0*/
_output_shapes
:?????????  2
scale_to_0_1/zeros_like?
#scale_to_0_1/min_and_max/Identity_3Identity)scale_to_0_1_min_and_max_identity_3_input*
T0*
_output_shapes
: 2%
#scale_to_0_1/min_and_max/Identity_3?
scale_to_0_1/LessLess"scale_to_0_1/min_and_max/sub_1:z:0,scale_to_0_1/min_and_max/Identity_3:output:0*
T0*
_output_shapes
: 2
scale_to_0_1/Lessu
scale_to_0_1/CastCastscale_to_0_1/Less:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2
scale_to_0_1/Cast?
scale_to_0_1/addAddV2scale_to_0_1/zeros_like:y:0scale_to_0_1/Cast:y:0*
T0*/
_output_shapes
:?????????  2
scale_to_0_1/add?
scale_to_0_1/Cast_1Castscale_to_0_1/add:z:0*

DstT0
*

SrcT0*/
_output_shapes
:?????????  2
scale_to_0_1/Cast_1?
scale_to_0_1/sub_1Sub,scale_to_0_1/min_and_max/Identity_3:output:0"scale_to_0_1/min_and_max/sub_1:z:0*
T0*
_output_shapes
: 2
scale_to_0_1/sub_1?
scale_to_0_1/truedivRealDivscale_to_0_1/sub:z:0scale_to_0_1/sub_1:z:0*
T0*/
_output_shapes
:?????????  2
scale_to_0_1/truediv?
scale_to_0_1/SigmoidSigmoid/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*/
_output_shapes
:?????????  2
scale_to_0_1/Sigmoid?
scale_to_0_1/SelectV2SelectV2scale_to_0_1/Cast_1:y:0scale_to_0_1/truediv:z:0scale_to_0_1/Sigmoid:y:0*
T0*/
_output_shapes
:?????????  2
scale_to_0_1/SelectV2m
scale_to_0_1/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
scale_to_0_1/mul/y?
scale_to_0_1/mulMulscale_to_0_1/SelectV2:output:0scale_to_0_1/mul/y:output:0*
T0*/
_output_shapes
:?????????  2
scale_to_0_1/mulq
scale_to_0_1/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
scale_to_0_1/add_1/y?
scale_to_0_1/add_1AddV2scale_to_0_1/mul:z:0scale_to_0_1/add_1/y:output:0*
T0*/
_output_shapes
:?????????  2
scale_to_0_1/add_1?
scale_to_0_1/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB 2 
scale_to_0_1/min_and_max/Shape?
 scale_to_0_1/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 2"
 scale_to_0_1/min_and_max/Shape_1?
-scale_to_0_1/min_and_max/assert_equal_1/EqualEqual'scale_to_0_1/min_and_max/Shape:output:0)scale_to_0_1/min_and_max/Shape_1:output:0*
T0*
_output_shapes
: 2/
-scale_to_0_1/min_and_max/assert_equal_1/Equal?
-scale_to_0_1/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2/
-scale_to_0_1/min_and_max/assert_equal_1/Const?
+scale_to_0_1/min_and_max/assert_equal_1/AllAll1scale_to_0_1/min_and_max/assert_equal_1/Equal:z:06scale_to_0_1/min_and_max/assert_equal_1/Const:output:0*
_output_shapes
: 2-
+scale_to_0_1/min_and_max/assert_equal_1/All?
<scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:2>
<scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_0?
<scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*8
value/B- B'x (scale_to_0_1/min_and_max/Shape:0) = 2>
<scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_1?
<scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*:
value1B/ B)y (scale_to_0_1/min_and_max/Shape_1:0) = 2>
<scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_3?
5scale_to_0_1/min_and_max/assert_equal_1/Assert/AssertAssert4scale_to_0_1/min_and_max/assert_equal_1/All:output:0Escale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_0:output:0Escale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_1:output:0'scale_to_0_1/min_and_max/Shape:output:0Escale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_3:output:0)scale_to_0_1/min_and_max/Shape_1:output:0*
T	
2*
_output_shapes
 27
5scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert?
NoOpNoOp6^scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert*"
_acd_function_control_output(*
_output_shapes
 2
NoOpy
IdentityIdentityscale_to_0_1/add_1:z:0^NoOp*
T0*/
_output_shapes
:?????????  2

Identity?
map_1/while/loop_counterConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
map_1/while/loop_counterk
map_1/ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
map_1/Const?
#map_1/TensorArrayV2_1/element_shapeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#map_1/TensorArrayV2_1/element_shapef
inputs_1_copyIdentityinputs_1*
T0	*'
_output_shapes
:?????????2
inputs_1_copy?
	Squeeze_1Squeezeinputs_1_copy:output:0"/device:CPU:0*
T0	*#
_output_shapes
:?????????*
squeeze_dims
2
	Squeeze_1k
map_1/ShapeShapeSqueeze_1:output:0"/device:CPU:0*
T0	*
_output_shapes
:2
map_1/Shape?
map_1/strided_slice/stackConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB: 2
map_1/strided_slice/stack?
map_1/strided_slice/stack_1Const"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB:2
map_1/strided_slice/stack_1?
map_1/strided_slice/stack_2Const"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB:2
map_1/strided_slice/stack_2?
map_1/strided_sliceStridedSlicemap_1/Shape:output:0"map_1/strided_slice/stack:output:0$map_1/strided_slice/stack_1:output:0$map_1/strided_slice/stack_2:output:0"/device:CPU:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
map_1/strided_slice?
map_1/TensorArrayV2_1TensorListReserve,map_1/TensorArrayV2_1/element_shape:output:0map_1/strided_slice:output:0"/device:CPU:0*
_output_shapes
: *
element_dtype0*

shape_type02
map_1/TensorArrayV2_1?
map_1/TensorArrayUnstack/ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB 2 
map_1/TensorArrayUnstack/Const?
-map_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorSqueeze_1:output:0'map_1/TensorArrayUnstack/Const:output:0"/device:CPU:0*
_output_shapes
: *
element_dtype0	*

shape_type02/
-map_1/TensorArrayUnstack/TensorListFromTensor?
map_1/whileStatelessWhile!map_1/while/loop_counter:output:0map_1/strided_slice:output:0map_1/Const:output:0map_1/TensorArrayV2_1:handle:0map_1/strided_slice:output:0=map_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0"/device:CPU:0*
T

2*
_lower_using_switch_merge(*
_num_original_outputs* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *!
bodyR
map_1_while_body_1863*!
condR
map_1_while_cond_1862*
output_shapes
: : : : : : 2
map_1/while?
6map_1/TensorArrayV2Stack/TensorListStack/element_shapeConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB:
28
6map_1/TensorArrayV2Stack/TensorListStack/element_shape?
(map_1/TensorArrayV2Stack/TensorListStackTensorListStackmap_1/while:output:3?map_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0"/device:CPU:0*'
_output_shapes
:?????????
*
element_dtype02*
(map_1/TensorArrayV2Stack/TensorListStack?

Identity_1Identity1map_1/TensorArrayV2Stack/TensorListStack:tensor:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:?????????:?????????: : :- )
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?	
?
map_1_while_cond_1862(
$map_1_while_map_1_while_loop_counter#
map_1_while_map_1_strided_slice
map_1_while_placeholder
map_1_while_placeholder_1(
$map_1_while_less_map_1_strided_slice>
:map_1_while_map_1_while_cond_1862___redundant_placeholder0
map_1_while_identity
?
map_1/while/LessLessmap_1_while_placeholder$map_1_while_less_map_1_strided_slice"/device:CPU:0*
T0*
_output_shapes
: 2
map_1/while/Less?
map_1/while/Less_1Less$map_1_while_map_1_while_loop_countermap_1_while_map_1_strided_slice"/device:CPU:0*
T0*
_output_shapes
: 2
map_1/while/Less_1?
map_1/while/LogicalAnd
LogicalAndmap_1/while/Less_1:z:0map_1/while/Less:z:0"/device:CPU:0*
_output_shapes
: 2
map_1/while/LogicalAnd?
map_1/while/IdentityIdentitymap_1/while/LogicalAnd:z:0"/device:CPU:0*
T0
*
_output_shapes
: 2
map_1/while/Identity"5
map_1_while_identitymap_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : :: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
?
?
map_while_body_1806$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1#
map_while_map_strided_slice_1_0_
[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0
map_while_identity
map_while_identity_1
map_while_identity_2
map_while_identity_3!
map_while_map_strided_slice_1]
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor?
!map/while/TensorArrayV2Read/ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB 2#
!map/while/TensorArrayV2Read/Const?
-map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0map_while_placeholder*map/while/TensorArrayV2Read/Const:output:0"/device:CPU:0*
_output_shapes
: *
element_dtype02/
-map/while/TensorArrayV2Read/TensorListGetItem?
"map/while/decode_image/DecodeImageDecodeImage4map/while/TensorArrayV2Read/TensorListGetItem:item:0"/device:CPU:0*
_output_shapes
:*
channels2$
"map/while/decode_image/DecodeImage?
map/while/Reshape/shapeConst"/device:CPU:0*
_output_shapes
:*
dtype0*!
valueB"           2
map/while/Reshape/shape?
map/while/ReshapeReshape*map/while/decode_image/DecodeImage:image:0 map/while/Reshape/shape:output:0"/device:CPU:0*
T0*"
_output_shapes
:  2
map/while/Reshape?
map/while/CastCastmap/while/Reshape:output:0"/device:CPU:0*

DstT0*

SrcT0*"
_output_shapes
:  2
map/while/Cast?
.map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemmap_while_placeholder_1map_while_placeholdermap/while/Cast:y:0"/device:CPU:0*
_output_shapes
: *
element_dtype020
.map/while/TensorArrayV2Write/TensorListSetItems
map/while/add/yConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B :2
map/while/add/y?
map/while/addAddV2map_while_placeholdermap/while/add/y:output:0"/device:CPU:0*
T0*
_output_shapes
: 2
map/while/addw
map/while/add_1/yConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B :2
map/while/add_1/y?
map/while/add_1AddV2 map_while_map_while_loop_countermap/while/add_1/y:output:0"/device:CPU:0*
T0*
_output_shapes
: 2
map/while/add_1y
map/while/IdentityIdentitymap/while/add_1:z:0"/device:CPU:0*
T0*
_output_shapes
: 2
map/while/Identity?
map/while/Identity_1Identitymap_while_map_strided_slice"/device:CPU:0*
T0*
_output_shapes
: 2
map/while/Identity_1{
map/while/Identity_2Identitymap/while/add:z:0"/device:CPU:0*
T0*
_output_shapes
: 2
map/while/Identity_2?
map/while/Identity_3Identity>map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"/device:CPU:0*
T0*
_output_shapes
: 2
map/while/Identity_3"1
map_while_identitymap/while/Identity:output:0"5
map_while_identity_1map/while/Identity_1:output:0"5
map_while_identity_2map/while/Identity_2:output:0"5
map_while_identity_3map/while/Identity_3:output:0"@
map_while_map_strided_slice_1map_while_map_strided_slice_1_0"?
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : : : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
map_1_while_body_1863(
$map_1_while_map_1_while_loop_counter#
map_1_while_map_1_strided_slice
map_1_while_placeholder
map_1_while_placeholder_1'
#map_1_while_map_1_strided_slice_1_0c
_map_1_while_tensorarrayv2read_tensorlistgetitem_map_1_tensorarrayunstack_tensorlistfromtensor_0
map_1_while_identity
map_1_while_identity_1
map_1_while_identity_2
map_1_while_identity_3%
!map_1_while_map_1_strided_slice_1a
]map_1_while_tensorarrayv2read_tensorlistgetitem_map_1_tensorarrayunstack_tensorlistfromtensor?
#map_1/while/TensorArrayV2Read/ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB 2%
#map_1/while/TensorArrayV2Read/Const?
/map_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_map_1_while_tensorarrayv2read_tensorlistgetitem_map_1_tensorarrayunstack_tensorlistfromtensor_0map_1_while_placeholder,map_1/while/TensorArrayV2Read/Const:output:0"/device:CPU:0*
_output_shapes
: *
element_dtype0	21
/map_1/while/TensorArrayV2Read/TensorListGetItem?
map_1/while/one_hot/on_valueConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??2
map_1/while/one_hot/on_value?
map_1/while/one_hot/off_valueConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
map_1/while/one_hot/off_value?
map_1/while/one_hot/depthConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B :
2
map_1/while/one_hot/depth?
map_1/while/one_hotOneHot6map_1/while/TensorArrayV2Read/TensorListGetItem:item:0"map_1/while/one_hot/depth:output:0%map_1/while/one_hot/on_value:output:0&map_1/while/one_hot/off_value:output:0"/device:CPU:0*
T0*
_output_shapes
:
2
map_1/while/one_hot?
0map_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemmap_1_while_placeholder_1map_1_while_placeholdermap_1/while/one_hot:output:0"/device:CPU:0*
_output_shapes
: *
element_dtype022
0map_1/while/TensorArrayV2Write/TensorListSetItemw
map_1/while/add/yConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B :2
map_1/while/add/y?
map_1/while/addAddV2map_1_while_placeholdermap_1/while/add/y:output:0"/device:CPU:0*
T0*
_output_shapes
: 2
map_1/while/add{
map_1/while/add_1/yConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B :2
map_1/while/add_1/y?
map_1/while/add_1AddV2$map_1_while_map_1_while_loop_countermap_1/while/add_1/y:output:0"/device:CPU:0*
T0*
_output_shapes
: 2
map_1/while/add_1
map_1/while/IdentityIdentitymap_1/while/add_1:z:0"/device:CPU:0*
T0*
_output_shapes
: 2
map_1/while/Identity?
map_1/while/Identity_1Identitymap_1_while_map_1_strided_slice"/device:CPU:0*
T0*
_output_shapes
: 2
map_1/while/Identity_1?
map_1/while/Identity_2Identitymap_1/while/add:z:0"/device:CPU:0*
T0*
_output_shapes
: 2
map_1/while/Identity_2?
map_1/while/Identity_3Identity@map_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"/device:CPU:0*
T0*
_output_shapes
: 2
map_1/while/Identity_3"5
map_1_while_identitymap_1/while/Identity:output:0"9
map_1_while_identity_1map_1/while/Identity_1:output:0"9
map_1_while_identity_2map_1/while/Identity_2:output:0"9
map_1_while_identity_3map_1/while/Identity_3:output:0"H
!map_1_while_map_1_strided_slice_1#map_1_while_map_1_strided_slice_1_0"?
]map_1_while_tensorarrayv2read_tensorlistgetitem_map_1_tensorarrayunstack_tensorlistfromtensor_map_1_while_tensorarrayv2read_tensorlistgetitem_map_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : : : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
l
__inference__traced_save_2069
file_prefix
savev2_const_2

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0savev2_const_2"/device:CPU:0*
_output_shapes
 *
dtypes
22
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*
_input_shapes
: : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: "?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
9
inputs/
serving_default_inputs:0?????????
=
inputs_11
serving_default_inputs_1:0	?????????H
image_raw_xf8
StatefulPartitionedCall:0?????????  <
label_xf0
StatefulPartitionedCall:1?????????
tensorflow/serving/predict:?	
?
created_variables
	resources
trackable_objects
initializers

assets

signatures
transform_fn"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
,
serving_default"
signature_map
/B-
__inference_pruned_2028inputsinputs_1
?B?
"__inference_signature_wrapper_2042inputsinputs_1"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
	J
Const
J	
Const_1?
__inference_pruned_2028?	
|?y
r?o
m?j
7
	image_raw*?'
inputs/image_raw?????????
/
label&?#
inputs/label?????????	
? "s?p
>
image_raw_xf.?+
image_raw_xf?????????  
.
label_xf"?
label_xf?????????
?
"__inference_signature_wrapper_2042?	
i?f
? 
_?\
*
inputs ?
inputs?????????
.
inputs_1"?
inputs_1?????????	"s?p
>
image_raw_xf.?+
image_raw_xf?????????  
.
label_xf"?
label_xf?????????
