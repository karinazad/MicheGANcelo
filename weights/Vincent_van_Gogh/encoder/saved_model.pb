АЙ
иЊ
:
Add
x"T
y"T
z"T"
Ttype:
2	
B
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

,
Exp
x"T
y"T"
Ttype:

2
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
Е
RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
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
Њ
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
executor_typestring И
@
StaticRegexFullMatch	
input

output
"
patternstring
ц
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.4.02v2.4.0-0-g582c8d236cb8µу
М
encoder_19/z_mean/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*)
shared_nameencoder_19/z_mean/kernel
Е
,encoder_19/z_mean/kernel/Read/ReadVariableOpReadVariableOpencoder_19/z_mean/kernel*
_output_shapes

:*
dtype0
Д
encoder_19/z_mean/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameencoder_19/z_mean/bias
}
*encoder_19/z_mean/bias/Read/ReadVariableOpReadVariableOpencoder_19/z_mean/bias*
_output_shapes
:*
dtype0
Т
encoder_19/z_log_var/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*,
shared_nameencoder_19/z_log_var/kernel
Л
/encoder_19/z_log_var/kernel/Read/ReadVariableOpReadVariableOpencoder_19/z_log_var/kernel*
_output_shapes

:*
dtype0
К
encoder_19/z_log_var/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameencoder_19/z_log_var/bias
Г
-encoder_19/z_log_var/bias/Read/ReadVariableOpReadVariableOpencoder_19/z_log_var/bias*
_output_shapes
:*
dtype0
Е
conv2d_57/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*!
shared_nameconv2d_57/kernel
~
$conv2d_57/kernel/Read/ReadVariableOpReadVariableOpconv2d_57/kernel*'
_output_shapes
:А*
dtype0
u
conv2d_57/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_57/bias
n
"conv2d_57/bias/Read/ReadVariableOpReadVariableOpconv2d_57/bias*
_output_shapes	
:А*
dtype0
Ж
conv2d_58/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*!
shared_nameconv2d_58/kernel

$conv2d_58/kernel/Read/ReadVariableOpReadVariableOpconv2d_58/kernel*(
_output_shapes
:АА*
dtype0
u
conv2d_58/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_58/bias
n
"conv2d_58/bias/Read/ReadVariableOpReadVariableOpconv2d_58/bias*
_output_shapes	
:А*
dtype0
Ж
conv2d_59/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*!
shared_nameconv2d_59/kernel

$conv2d_59/kernel/Read/ReadVariableOpReadVariableOpconv2d_59/kernel*(
_output_shapes
:АА*
dtype0
u
conv2d_59/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_59/bias
n
"conv2d_59/bias/Read/ReadVariableOpReadVariableOpconv2d_59/bias*
_output_shapes	
:А*
dtype0
|
dense_38/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА* 
shared_namedense_38/kernel
u
#dense_38/kernel/Read/ReadVariableOpReadVariableOpdense_38/kernel* 
_output_shapes
:
АА*
dtype0
r
dense_38/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_38/bias
k
!dense_38/bias/Read/ReadVariableOpReadVariableOpdense_38/bias*
_output_shapes
:*
dtype0

NoOpNoOp
Н#
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*»"
valueЊ"Bї" Bі"
Й
	model
dense_z
	log_var_z
regularization_losses
trainable_variables
	variables
	keras_api

signatures
ы
	layer_with_weights-0
	layer-0

layer_with_weights-1

layer-1
layer_with_weights-2
layer-2
layer-3
layer_with_weights-3
layer-4
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
 
V
0
1
 2
!3
"4
#5
$6
%7
8
9
10
11
V
0
1
 2
!3
"4
#5
$6
%7
8
9
10
11
≠
regularization_losses
&non_trainable_variables

'layers
(metrics
trainable_variables
)layer_metrics
	variables
*layer_regularization_losses
 
h

kernel
bias
+regularization_losses
,trainable_variables
-	variables
.	keras_api
h

 kernel
!bias
/regularization_losses
0trainable_variables
1	variables
2	keras_api
h

"kernel
#bias
3regularization_losses
4trainable_variables
5	variables
6	keras_api
R
7regularization_losses
8trainable_variables
9	variables
:	keras_api
h

$kernel
%bias
;regularization_losses
<trainable_variables
=	variables
>	keras_api
 
8
0
1
 2
!3
"4
#5
$6
%7
8
0
1
 2
!3
"4
#5
$6
%7
≠
regularization_losses
?non_trainable_variables

@layers
Ametrics
trainable_variables
Blayer_metrics
	variables
Clayer_regularization_losses
WU
VARIABLE_VALUEencoder_19/z_mean/kernel)dense_z/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEencoder_19/z_mean/bias'dense_z/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
≠
regularization_losses
Dnon_trainable_variables

Elayers
Fmetrics
trainable_variables
Glayer_metrics
	variables
Hlayer_regularization_losses
\Z
VARIABLE_VALUEencoder_19/z_log_var/kernel+log_var_z/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEencoder_19/z_log_var/bias)log_var_z/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
≠
regularization_losses
Inon_trainable_variables

Jlayers
Kmetrics
trainable_variables
Llayer_metrics
	variables
Mlayer_regularization_losses
VT
VARIABLE_VALUEconv2d_57/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEconv2d_57/bias0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEconv2d_58/kernel0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEconv2d_58/bias0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEconv2d_59/kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEconv2d_59/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdense_38/kernel0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEdense_38/bias0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
 
 
 
 

0
1

0
1
≠
+regularization_losses
Nnon_trainable_variables

Olayers
Pmetrics
,trainable_variables
Qlayer_metrics
-	variables
Rlayer_regularization_losses
 

 0
!1

 0
!1
≠
/regularization_losses
Snon_trainable_variables

Tlayers
Umetrics
0trainable_variables
Vlayer_metrics
1	variables
Wlayer_regularization_losses
 

"0
#1

"0
#1
≠
3regularization_losses
Xnon_trainable_variables

Ylayers
Zmetrics
4trainable_variables
[layer_metrics
5	variables
\layer_regularization_losses
 
 
 
≠
7regularization_losses
]non_trainable_variables

^layers
_metrics
8trainable_variables
`layer_metrics
9	variables
alayer_regularization_losses
 

$0
%1

$0
%1
≠
;regularization_losses
bnon_trainable_variables

clayers
dmetrics
<trainable_variables
elayer_metrics
=	variables
flayer_regularization_losses
 
#
	0

1
2
3
4
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
К
serving_default_input_1Placeholder*/
_output_shapes
:€€€€€€€€€@@*
dtype0*$
shape:€€€€€€€€€@@
е
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv2d_57/kernelconv2d_57/biasconv2d_58/kernelconv2d_58/biasconv2d_59/kernelconv2d_59/biasdense_38/kerneldense_38/biasencoder_19/z_mean/kernelencoder_19/z_mean/biasencoder_19/z_log_var/kernelencoder_19/z_log_var/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *-
f(R&
$__inference_signature_wrapper_229738
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
К
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename,encoder_19/z_mean/kernel/Read/ReadVariableOp*encoder_19/z_mean/bias/Read/ReadVariableOp/encoder_19/z_log_var/kernel/Read/ReadVariableOp-encoder_19/z_log_var/bias/Read/ReadVariableOp$conv2d_57/kernel/Read/ReadVariableOp"conv2d_57/bias/Read/ReadVariableOp$conv2d_58/kernel/Read/ReadVariableOp"conv2d_58/bias/Read/ReadVariableOp$conv2d_59/kernel/Read/ReadVariableOp"conv2d_59/bias/Read/ReadVariableOp#dense_38/kernel/Read/ReadVariableOp!dense_38/bias/Read/ReadVariableOpConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference__traced_save_230242
Х
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameencoder_19/z_mean/kernelencoder_19/z_mean/biasencoder_19/z_log_var/kernelencoder_19/z_log_var/biasconv2d_57/kernelconv2d_57/biasconv2d_58/kernelconv2d_58/biasconv2d_59/kernelconv2d_59/biasdense_38/kerneldense_38/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *+
f&R$
"__inference__traced_restore_230288ІІ
ј
я
.__inference_sequential_38_layer_call_fn_229343
input_39
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityИҐStatefulPartitionedCallћ
StatefulPartitionedCallStatefulPartitionedCallinput_39unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_38_layer_call_and_return_conditional_losses_2293242
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:€€€€€€€€€@@::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:€€€€€€€€€@@
"
_user_specified_name
input_39
†
І
I__inference_sequential_38_layer_call_and_return_conditional_losses_229296
input_39
conv2d_57_229274
conv2d_57_229276
conv2d_58_229279
conv2d_58_229281
conv2d_59_229284
conv2d_59_229286
dense_38_229290
dense_38_229292
identityИҐ!conv2d_57/StatefulPartitionedCallҐ!conv2d_58/StatefulPartitionedCallҐ!conv2d_59/StatefulPartitionedCallҐ dense_38/StatefulPartitionedCallІ
!conv2d_57/StatefulPartitionedCallStatefulPartitionedCallinput_39conv2d_57_229274conv2d_57_229276*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_57_layer_call_and_return_conditional_losses_2291592#
!conv2d_57/StatefulPartitionedCall…
!conv2d_58/StatefulPartitionedCallStatefulPartitionedCall*conv2d_57/StatefulPartitionedCall:output:0conv2d_58_229279conv2d_58_229281*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_58_layer_call_and_return_conditional_losses_2291862#
!conv2d_58/StatefulPartitionedCall…
!conv2d_59/StatefulPartitionedCallStatefulPartitionedCall*conv2d_58/StatefulPartitionedCall:output:0conv2d_59_229284conv2d_59_229286*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_59_layer_call_and_return_conditional_losses_2292132#
!conv2d_59/StatefulPartitionedCallГ
flatten_19/PartitionedCallPartitionedCall*conv2d_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_flatten_19_layer_call_and_return_conditional_losses_2292352
flatten_19/PartitionedCallі
 dense_38/StatefulPartitionedCallStatefulPartitionedCall#flatten_19/PartitionedCall:output:0dense_38_229290dense_38_229292*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_38_layer_call_and_return_conditional_losses_2292542"
 dense_38/StatefulPartitionedCallМ
IdentityIdentity)dense_38/StatefulPartitionedCall:output:0"^conv2d_57/StatefulPartitionedCall"^conv2d_58/StatefulPartitionedCall"^conv2d_59/StatefulPartitionedCall!^dense_38/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:€€€€€€€€€@@::::::::2F
!conv2d_57/StatefulPartitionedCall!conv2d_57/StatefulPartitionedCall2F
!conv2d_58/StatefulPartitionedCall!conv2d_58/StatefulPartitionedCall2F
!conv2d_59/StatefulPartitionedCall!conv2d_59/StatefulPartitionedCall2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall:Y U
/
_output_shapes
:€€€€€€€€€@@
"
_user_specified_name
input_39
≈
±
$__inference_signature_wrapper_229738
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity

identity_1

identity_2ИҐStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__wrapped_model_2291442
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

IdentityТ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1Т

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*^
_input_shapesM
K:€€€€€€€€€@@::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:€€€€€€€€€@@
!
_user_specified_name	input_1
Іm
Ь

F__inference_encoder_19_layer_call_and_return_conditional_losses_229876
x:
6sequential_38_conv2d_57_conv2d_readvariableop_resource;
7sequential_38_conv2d_57_biasadd_readvariableop_resource:
6sequential_38_conv2d_58_conv2d_readvariableop_resource;
7sequential_38_conv2d_58_biasadd_readvariableop_resource:
6sequential_38_conv2d_59_conv2d_readvariableop_resource;
7sequential_38_conv2d_59_biasadd_readvariableop_resource9
5sequential_38_dense_38_matmul_readvariableop_resource:
6sequential_38_dense_38_biasadd_readvariableop_resource)
%z_mean_matmul_readvariableop_resource*
&z_mean_biasadd_readvariableop_resource,
(z_log_var_matmul_readvariableop_resource-
)z_log_var_biasadd_readvariableop_resource
identity

identity_1

identity_2ИҐ.sequential_38/conv2d_57/BiasAdd/ReadVariableOpҐ-sequential_38/conv2d_57/Conv2D/ReadVariableOpҐ.sequential_38/conv2d_58/BiasAdd/ReadVariableOpҐ-sequential_38/conv2d_58/Conv2D/ReadVariableOpҐ.sequential_38/conv2d_59/BiasAdd/ReadVariableOpҐ-sequential_38/conv2d_59/Conv2D/ReadVariableOpҐ-sequential_38/dense_38/BiasAdd/ReadVariableOpҐ,sequential_38/dense_38/MatMul/ReadVariableOpҐ z_log_var/BiasAdd/ReadVariableOpҐz_log_var/MatMul/ReadVariableOpҐz_mean/BiasAdd/ReadVariableOpҐz_mean/MatMul/ReadVariableOpё
-sequential_38/conv2d_57/Conv2D/ReadVariableOpReadVariableOp6sequential_38_conv2d_57_conv2d_readvariableop_resource*'
_output_shapes
:А*
dtype02/
-sequential_38/conv2d_57/Conv2D/ReadVariableOpз
sequential_38/conv2d_57/Conv2DConv2Dx5sequential_38/conv2d_57/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
2 
sequential_38/conv2d_57/Conv2D’
.sequential_38/conv2d_57/BiasAdd/ReadVariableOpReadVariableOp7sequential_38_conv2d_57_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype020
.sequential_38/conv2d_57/BiasAdd/ReadVariableOpй
sequential_38/conv2d_57/BiasAddBiasAdd'sequential_38/conv2d_57/Conv2D:output:06sequential_38/conv2d_57/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А2!
sequential_38/conv2d_57/BiasAdd©
sequential_38/conv2d_57/ReluRelu(sequential_38/conv2d_57/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
sequential_38/conv2d_57/Reluя
-sequential_38/conv2d_58/Conv2D/ReadVariableOpReadVariableOp6sequential_38_conv2d_58_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02/
-sequential_38/conv2d_58/Conv2D/ReadVariableOpР
sequential_38/conv2d_58/Conv2DConv2D*sequential_38/conv2d_57/Relu:activations:05sequential_38/conv2d_58/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2 
sequential_38/conv2d_58/Conv2D’
.sequential_38/conv2d_58/BiasAdd/ReadVariableOpReadVariableOp7sequential_38_conv2d_58_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype020
.sequential_38/conv2d_58/BiasAdd/ReadVariableOpй
sequential_38/conv2d_58/BiasAddBiasAdd'sequential_38/conv2d_58/Conv2D:output:06sequential_38/conv2d_58/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2!
sequential_38/conv2d_58/BiasAdd©
sequential_38/conv2d_58/ReluRelu(sequential_38/conv2d_58/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
sequential_38/conv2d_58/Reluя
-sequential_38/conv2d_59/Conv2D/ReadVariableOpReadVariableOp6sequential_38_conv2d_59_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02/
-sequential_38/conv2d_59/Conv2D/ReadVariableOpР
sequential_38/conv2d_59/Conv2DConv2D*sequential_38/conv2d_58/Relu:activations:05sequential_38/conv2d_59/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2 
sequential_38/conv2d_59/Conv2D’
.sequential_38/conv2d_59/BiasAdd/ReadVariableOpReadVariableOp7sequential_38_conv2d_59_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype020
.sequential_38/conv2d_59/BiasAdd/ReadVariableOpй
sequential_38/conv2d_59/BiasAddBiasAdd'sequential_38/conv2d_59/Conv2D:output:06sequential_38/conv2d_59/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2!
sequential_38/conv2d_59/BiasAdd©
sequential_38/conv2d_59/ReluRelu(sequential_38/conv2d_59/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
sequential_38/conv2d_59/ReluС
sequential_38/flatten_19/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ А  2 
sequential_38/flatten_19/ConstЎ
 sequential_38/flatten_19/ReshapeReshape*sequential_38/conv2d_59/Relu:activations:0'sequential_38/flatten_19/Const:output:0*
T0*)
_output_shapes
:€€€€€€€€€АА2"
 sequential_38/flatten_19/Reshape‘
,sequential_38/dense_38/MatMul/ReadVariableOpReadVariableOp5sequential_38_dense_38_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02.
,sequential_38/dense_38/MatMul/ReadVariableOpџ
sequential_38/dense_38/MatMulMatMul)sequential_38/flatten_19/Reshape:output:04sequential_38/dense_38/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential_38/dense_38/MatMul—
-sequential_38/dense_38/BiasAdd/ReadVariableOpReadVariableOp6sequential_38_dense_38_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_38/dense_38/BiasAdd/ReadVariableOpЁ
sequential_38/dense_38/BiasAddBiasAdd'sequential_38/dense_38/MatMul:product:05sequential_38/dense_38/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2 
sequential_38/dense_38/BiasAddЭ
sequential_38/dense_38/ReluRelu'sequential_38/dense_38/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential_38/dense_38/ReluҐ
z_mean/MatMul/ReadVariableOpReadVariableOp%z_mean_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
z_mean/MatMul/ReadVariableOpЂ
z_mean/MatMulMatMul)sequential_38/dense_38/Relu:activations:0$z_mean/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
z_mean/MatMul°
z_mean/BiasAdd/ReadVariableOpReadVariableOp&z_mean_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
z_mean/BiasAdd/ReadVariableOpЭ
z_mean/BiasAddBiasAddz_mean/MatMul:product:0%z_mean/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
z_mean/BiasAddЂ
z_log_var/MatMul/ReadVariableOpReadVariableOp(z_log_var_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
z_log_var/MatMul/ReadVariableOpі
z_log_var/MatMulMatMul)sequential_38/dense_38/Relu:activations:0'z_log_var/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
z_log_var/MatMul™
 z_log_var/BiasAdd/ReadVariableOpReadVariableOp)z_log_var_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 z_log_var/BiasAdd/ReadVariableOp©
z_log_var/BiasAddBiasAddz_log_var/MatMul:product:0(z_log_var/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
z_log_var/BiasAddg
sampling/ShapeShapez_mean/BiasAdd:output:0*
T0*
_output_shapes
:2
sampling/ShapeЖ
sampling/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
sampling/strided_slice/stackК
sampling/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
sampling/strided_slice/stack_1К
sampling/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
sampling/strided_slice/stack_2Ш
sampling/strided_sliceStridedSlicesampling/Shape:output:0%sampling/strided_slice/stack:output:0'sampling/strided_slice/stack_1:output:0'sampling/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
sampling/strided_slicek
sampling/Shape_1Shapez_mean/BiasAdd:output:0*
T0*
_output_shapes
:2
sampling/Shape_1К
sampling/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2 
sampling/strided_slice_1/stackО
 sampling/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 sampling/strided_slice_1/stack_1О
 sampling/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 sampling/strided_slice_1/stack_2§
sampling/strided_slice_1StridedSlicesampling/Shape_1:output:0'sampling/strided_slice_1/stack:output:0)sampling/strided_slice_1/stack_1:output:0)sampling/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
sampling/strided_slice_1ґ
sampling/random_normal/shapePacksampling/strided_slice:output:0!sampling/strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
sampling/random_normal/shape
sampling/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    2
sampling/random_normal/meanГ
sampling/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
sampling/random_normal/stddevА
+sampling/random_normal/RandomStandardNormalRandomStandardNormal%sampling/random_normal/shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
dtype0*
seed±€е)*
seed2№и£2-
+sampling/random_normal/RandomStandardNormalЎ
sampling/random_normal/mulMul4sampling/random_normal/RandomStandardNormal:output:0&sampling/random_normal/stddev:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
sampling/random_normal/mulЄ
sampling/random_normalAddsampling/random_normal/mul:z:0$sampling/random_normal/mean:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
sampling/random_normale
sampling/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
sampling/mul/xК
sampling/mulMulsampling/mul/x:output:0z_log_var/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
sampling/mulg
sampling/ExpExpsampling/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
sampling/ExpЗ
sampling/mul_1Mulsampling/Exp:y:0sampling/random_normal:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
sampling/mul_1Д
sampling/addAddV2z_mean/BiasAdd:output:0sampling/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
sampling/addс
IdentityIdentityz_mean/BiasAdd:output:0/^sequential_38/conv2d_57/BiasAdd/ReadVariableOp.^sequential_38/conv2d_57/Conv2D/ReadVariableOp/^sequential_38/conv2d_58/BiasAdd/ReadVariableOp.^sequential_38/conv2d_58/Conv2D/ReadVariableOp/^sequential_38/conv2d_59/BiasAdd/ReadVariableOp.^sequential_38/conv2d_59/Conv2D/ReadVariableOp.^sequential_38/dense_38/BiasAdd/ReadVariableOp-^sequential_38/dense_38/MatMul/ReadVariableOp!^z_log_var/BiasAdd/ReadVariableOp ^z_log_var/MatMul/ReadVariableOp^z_mean/BiasAdd/ReadVariableOp^z_mean/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityш

Identity_1Identityz_log_var/BiasAdd:output:0/^sequential_38/conv2d_57/BiasAdd/ReadVariableOp.^sequential_38/conv2d_57/Conv2D/ReadVariableOp/^sequential_38/conv2d_58/BiasAdd/ReadVariableOp.^sequential_38/conv2d_58/Conv2D/ReadVariableOp/^sequential_38/conv2d_59/BiasAdd/ReadVariableOp.^sequential_38/conv2d_59/Conv2D/ReadVariableOp.^sequential_38/dense_38/BiasAdd/ReadVariableOp-^sequential_38/dense_38/MatMul/ReadVariableOp!^z_log_var/BiasAdd/ReadVariableOp ^z_log_var/MatMul/ReadVariableOp^z_mean/BiasAdd/ReadVariableOp^z_mean/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1о

Identity_2Identitysampling/add:z:0/^sequential_38/conv2d_57/BiasAdd/ReadVariableOp.^sequential_38/conv2d_57/Conv2D/ReadVariableOp/^sequential_38/conv2d_58/BiasAdd/ReadVariableOp.^sequential_38/conv2d_58/Conv2D/ReadVariableOp/^sequential_38/conv2d_59/BiasAdd/ReadVariableOp.^sequential_38/conv2d_59/Conv2D/ReadVariableOp.^sequential_38/dense_38/BiasAdd/ReadVariableOp-^sequential_38/dense_38/MatMul/ReadVariableOp!^z_log_var/BiasAdd/ReadVariableOp ^z_log_var/MatMul/ReadVariableOp^z_mean/BiasAdd/ReadVariableOp^z_mean/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*^
_input_shapesM
K:€€€€€€€€€@@::::::::::::2`
.sequential_38/conv2d_57/BiasAdd/ReadVariableOp.sequential_38/conv2d_57/BiasAdd/ReadVariableOp2^
-sequential_38/conv2d_57/Conv2D/ReadVariableOp-sequential_38/conv2d_57/Conv2D/ReadVariableOp2`
.sequential_38/conv2d_58/BiasAdd/ReadVariableOp.sequential_38/conv2d_58/BiasAdd/ReadVariableOp2^
-sequential_38/conv2d_58/Conv2D/ReadVariableOp-sequential_38/conv2d_58/Conv2D/ReadVariableOp2`
.sequential_38/conv2d_59/BiasAdd/ReadVariableOp.sequential_38/conv2d_59/BiasAdd/ReadVariableOp2^
-sequential_38/conv2d_59/Conv2D/ReadVariableOp-sequential_38/conv2d_59/Conv2D/ReadVariableOp2^
-sequential_38/dense_38/BiasAdd/ReadVariableOp-sequential_38/dense_38/BiasAdd/ReadVariableOp2\
,sequential_38/dense_38/MatMul/ReadVariableOp,sequential_38/dense_38/MatMul/ReadVariableOp2D
 z_log_var/BiasAdd/ReadVariableOp z_log_var/BiasAdd/ReadVariableOp2B
z_log_var/MatMul/ReadVariableOpz_log_var/MatMul/ReadVariableOp2>
z_mean/BiasAdd/ReadVariableOpz_mean/BiasAdd/ReadVariableOp2<
z_mean/MatMul/ReadVariableOpz_mean/MatMul/ReadVariableOp:R N
/
_output_shapes
:€€€€€€€€€@@

_user_specified_namex
Ї
Ё
.__inference_sequential_38_layer_call_fn_230031

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityИҐStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_38_layer_call_and_return_conditional_losses_2293242
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:€€€€€€€€€@@::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€@@
 
_user_specified_nameinputs
Ї
Ё
.__inference_sequential_38_layer_call_fn_230052

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityИҐStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_38_layer_call_and_return_conditional_losses_2293702
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:€€€€€€€€€@@::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€@@
 
_user_specified_nameinputs
я
≤
+__inference_encoder_19_layer_call_fn_229909
x
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity

identity_1

identity_2ИҐStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_encoder_19_layer_call_and_return_conditional_losses_2296392
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

IdentityТ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1Т

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*^
_input_shapesM
K:€€€€€€€€€@@::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:€€€€€€€€€@@

_user_specified_namex
ф	
Ё
D__inference_dense_38_layer_call_and_return_conditional_losses_230172

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
ReluЧ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*0
_input_shapes
:€€€€€€€€€АА::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Ў

ё
E__inference_conv2d_59_layer_call_and_return_conditional_losses_229213

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ў

ё
E__inference_conv2d_59_layer_call_and_return_conditional_losses_230141

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
с
Є
+__inference_encoder_19_layer_call_fn_229703
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity

identity_1

identity_2ИҐStatefulPartitionedCall•
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_encoder_19_layer_call_and_return_conditional_losses_2296392
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

IdentityТ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1Т

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*^
_input_shapesM
K:€€€€€€€€€@@::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:€€€€€€€€€@@
!
_user_specified_name	input_1
ј
я
.__inference_sequential_38_layer_call_fn_229389
input_39
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityИҐStatefulPartitionedCallћ
StatefulPartitionedCallStatefulPartitionedCallinput_39unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_38_layer_call_and_return_conditional_losses_2293702
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:€€€€€€€€€@@::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:€€€€€€€€€@@
"
_user_specified_name
input_39
Р	
џ
B__inference_z_mean_layer_call_and_return_conditional_losses_229462

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ў

ё
E__inference_conv2d_58_layer_call_and_return_conditional_losses_229186

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€  А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€  А
 
_user_specified_nameinputs
Іm
Ь

F__inference_encoder_19_layer_call_and_return_conditional_losses_229807
x:
6sequential_38_conv2d_57_conv2d_readvariableop_resource;
7sequential_38_conv2d_57_biasadd_readvariableop_resource:
6sequential_38_conv2d_58_conv2d_readvariableop_resource;
7sequential_38_conv2d_58_biasadd_readvariableop_resource:
6sequential_38_conv2d_59_conv2d_readvariableop_resource;
7sequential_38_conv2d_59_biasadd_readvariableop_resource9
5sequential_38_dense_38_matmul_readvariableop_resource:
6sequential_38_dense_38_biasadd_readvariableop_resource)
%z_mean_matmul_readvariableop_resource*
&z_mean_biasadd_readvariableop_resource,
(z_log_var_matmul_readvariableop_resource-
)z_log_var_biasadd_readvariableop_resource
identity

identity_1

identity_2ИҐ.sequential_38/conv2d_57/BiasAdd/ReadVariableOpҐ-sequential_38/conv2d_57/Conv2D/ReadVariableOpҐ.sequential_38/conv2d_58/BiasAdd/ReadVariableOpҐ-sequential_38/conv2d_58/Conv2D/ReadVariableOpҐ.sequential_38/conv2d_59/BiasAdd/ReadVariableOpҐ-sequential_38/conv2d_59/Conv2D/ReadVariableOpҐ-sequential_38/dense_38/BiasAdd/ReadVariableOpҐ,sequential_38/dense_38/MatMul/ReadVariableOpҐ z_log_var/BiasAdd/ReadVariableOpҐz_log_var/MatMul/ReadVariableOpҐz_mean/BiasAdd/ReadVariableOpҐz_mean/MatMul/ReadVariableOpё
-sequential_38/conv2d_57/Conv2D/ReadVariableOpReadVariableOp6sequential_38_conv2d_57_conv2d_readvariableop_resource*'
_output_shapes
:А*
dtype02/
-sequential_38/conv2d_57/Conv2D/ReadVariableOpз
sequential_38/conv2d_57/Conv2DConv2Dx5sequential_38/conv2d_57/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
2 
sequential_38/conv2d_57/Conv2D’
.sequential_38/conv2d_57/BiasAdd/ReadVariableOpReadVariableOp7sequential_38_conv2d_57_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype020
.sequential_38/conv2d_57/BiasAdd/ReadVariableOpй
sequential_38/conv2d_57/BiasAddBiasAdd'sequential_38/conv2d_57/Conv2D:output:06sequential_38/conv2d_57/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А2!
sequential_38/conv2d_57/BiasAdd©
sequential_38/conv2d_57/ReluRelu(sequential_38/conv2d_57/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
sequential_38/conv2d_57/Reluя
-sequential_38/conv2d_58/Conv2D/ReadVariableOpReadVariableOp6sequential_38_conv2d_58_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02/
-sequential_38/conv2d_58/Conv2D/ReadVariableOpР
sequential_38/conv2d_58/Conv2DConv2D*sequential_38/conv2d_57/Relu:activations:05sequential_38/conv2d_58/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2 
sequential_38/conv2d_58/Conv2D’
.sequential_38/conv2d_58/BiasAdd/ReadVariableOpReadVariableOp7sequential_38_conv2d_58_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype020
.sequential_38/conv2d_58/BiasAdd/ReadVariableOpй
sequential_38/conv2d_58/BiasAddBiasAdd'sequential_38/conv2d_58/Conv2D:output:06sequential_38/conv2d_58/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2!
sequential_38/conv2d_58/BiasAdd©
sequential_38/conv2d_58/ReluRelu(sequential_38/conv2d_58/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
sequential_38/conv2d_58/Reluя
-sequential_38/conv2d_59/Conv2D/ReadVariableOpReadVariableOp6sequential_38_conv2d_59_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02/
-sequential_38/conv2d_59/Conv2D/ReadVariableOpР
sequential_38/conv2d_59/Conv2DConv2D*sequential_38/conv2d_58/Relu:activations:05sequential_38/conv2d_59/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2 
sequential_38/conv2d_59/Conv2D’
.sequential_38/conv2d_59/BiasAdd/ReadVariableOpReadVariableOp7sequential_38_conv2d_59_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype020
.sequential_38/conv2d_59/BiasAdd/ReadVariableOpй
sequential_38/conv2d_59/BiasAddBiasAdd'sequential_38/conv2d_59/Conv2D:output:06sequential_38/conv2d_59/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2!
sequential_38/conv2d_59/BiasAdd©
sequential_38/conv2d_59/ReluRelu(sequential_38/conv2d_59/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
sequential_38/conv2d_59/ReluС
sequential_38/flatten_19/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ А  2 
sequential_38/flatten_19/ConstЎ
 sequential_38/flatten_19/ReshapeReshape*sequential_38/conv2d_59/Relu:activations:0'sequential_38/flatten_19/Const:output:0*
T0*)
_output_shapes
:€€€€€€€€€АА2"
 sequential_38/flatten_19/Reshape‘
,sequential_38/dense_38/MatMul/ReadVariableOpReadVariableOp5sequential_38_dense_38_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02.
,sequential_38/dense_38/MatMul/ReadVariableOpџ
sequential_38/dense_38/MatMulMatMul)sequential_38/flatten_19/Reshape:output:04sequential_38/dense_38/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential_38/dense_38/MatMul—
-sequential_38/dense_38/BiasAdd/ReadVariableOpReadVariableOp6sequential_38_dense_38_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_38/dense_38/BiasAdd/ReadVariableOpЁ
sequential_38/dense_38/BiasAddBiasAdd'sequential_38/dense_38/MatMul:product:05sequential_38/dense_38/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2 
sequential_38/dense_38/BiasAddЭ
sequential_38/dense_38/ReluRelu'sequential_38/dense_38/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential_38/dense_38/ReluҐ
z_mean/MatMul/ReadVariableOpReadVariableOp%z_mean_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
z_mean/MatMul/ReadVariableOpЂ
z_mean/MatMulMatMul)sequential_38/dense_38/Relu:activations:0$z_mean/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
z_mean/MatMul°
z_mean/BiasAdd/ReadVariableOpReadVariableOp&z_mean_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
z_mean/BiasAdd/ReadVariableOpЭ
z_mean/BiasAddBiasAddz_mean/MatMul:product:0%z_mean/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
z_mean/BiasAddЂ
z_log_var/MatMul/ReadVariableOpReadVariableOp(z_log_var_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
z_log_var/MatMul/ReadVariableOpі
z_log_var/MatMulMatMul)sequential_38/dense_38/Relu:activations:0'z_log_var/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
z_log_var/MatMul™
 z_log_var/BiasAdd/ReadVariableOpReadVariableOp)z_log_var_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 z_log_var/BiasAdd/ReadVariableOp©
z_log_var/BiasAddBiasAddz_log_var/MatMul:product:0(z_log_var/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
z_log_var/BiasAddg
sampling/ShapeShapez_mean/BiasAdd:output:0*
T0*
_output_shapes
:2
sampling/ShapeЖ
sampling/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
sampling/strided_slice/stackК
sampling/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
sampling/strided_slice/stack_1К
sampling/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
sampling/strided_slice/stack_2Ш
sampling/strided_sliceStridedSlicesampling/Shape:output:0%sampling/strided_slice/stack:output:0'sampling/strided_slice/stack_1:output:0'sampling/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
sampling/strided_slicek
sampling/Shape_1Shapez_mean/BiasAdd:output:0*
T0*
_output_shapes
:2
sampling/Shape_1К
sampling/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2 
sampling/strided_slice_1/stackО
 sampling/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 sampling/strided_slice_1/stack_1О
 sampling/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 sampling/strided_slice_1/stack_2§
sampling/strided_slice_1StridedSlicesampling/Shape_1:output:0'sampling/strided_slice_1/stack:output:0)sampling/strided_slice_1/stack_1:output:0)sampling/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
sampling/strided_slice_1ґ
sampling/random_normal/shapePacksampling/strided_slice:output:0!sampling/strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
sampling/random_normal/shape
sampling/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    2
sampling/random_normal/meanГ
sampling/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
sampling/random_normal/stddevА
+sampling/random_normal/RandomStandardNormalRandomStandardNormal%sampling/random_normal/shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
dtype0*
seed±€е)*
seed2†Р€2-
+sampling/random_normal/RandomStandardNormalЎ
sampling/random_normal/mulMul4sampling/random_normal/RandomStandardNormal:output:0&sampling/random_normal/stddev:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
sampling/random_normal/mulЄ
sampling/random_normalAddsampling/random_normal/mul:z:0$sampling/random_normal/mean:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
sampling/random_normale
sampling/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
sampling/mul/xК
sampling/mulMulsampling/mul/x:output:0z_log_var/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
sampling/mulg
sampling/ExpExpsampling/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
sampling/ExpЗ
sampling/mul_1Mulsampling/Exp:y:0sampling/random_normal:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
sampling/mul_1Д
sampling/addAddV2z_mean/BiasAdd:output:0sampling/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
sampling/addс
IdentityIdentityz_mean/BiasAdd:output:0/^sequential_38/conv2d_57/BiasAdd/ReadVariableOp.^sequential_38/conv2d_57/Conv2D/ReadVariableOp/^sequential_38/conv2d_58/BiasAdd/ReadVariableOp.^sequential_38/conv2d_58/Conv2D/ReadVariableOp/^sequential_38/conv2d_59/BiasAdd/ReadVariableOp.^sequential_38/conv2d_59/Conv2D/ReadVariableOp.^sequential_38/dense_38/BiasAdd/ReadVariableOp-^sequential_38/dense_38/MatMul/ReadVariableOp!^z_log_var/BiasAdd/ReadVariableOp ^z_log_var/MatMul/ReadVariableOp^z_mean/BiasAdd/ReadVariableOp^z_mean/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityш

Identity_1Identityz_log_var/BiasAdd:output:0/^sequential_38/conv2d_57/BiasAdd/ReadVariableOp.^sequential_38/conv2d_57/Conv2D/ReadVariableOp/^sequential_38/conv2d_58/BiasAdd/ReadVariableOp.^sequential_38/conv2d_58/Conv2D/ReadVariableOp/^sequential_38/conv2d_59/BiasAdd/ReadVariableOp.^sequential_38/conv2d_59/Conv2D/ReadVariableOp.^sequential_38/dense_38/BiasAdd/ReadVariableOp-^sequential_38/dense_38/MatMul/ReadVariableOp!^z_log_var/BiasAdd/ReadVariableOp ^z_log_var/MatMul/ReadVariableOp^z_mean/BiasAdd/ReadVariableOp^z_mean/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1о

Identity_2Identitysampling/add:z:0/^sequential_38/conv2d_57/BiasAdd/ReadVariableOp.^sequential_38/conv2d_57/Conv2D/ReadVariableOp/^sequential_38/conv2d_58/BiasAdd/ReadVariableOp.^sequential_38/conv2d_58/Conv2D/ReadVariableOp/^sequential_38/conv2d_59/BiasAdd/ReadVariableOp.^sequential_38/conv2d_59/Conv2D/ReadVariableOp.^sequential_38/dense_38/BiasAdd/ReadVariableOp-^sequential_38/dense_38/MatMul/ReadVariableOp!^z_log_var/BiasAdd/ReadVariableOp ^z_log_var/MatMul/ReadVariableOp^z_mean/BiasAdd/ReadVariableOp^z_mean/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*^
_input_shapesM
K:€€€€€€€€€@@::::::::::::2`
.sequential_38/conv2d_57/BiasAdd/ReadVariableOp.sequential_38/conv2d_57/BiasAdd/ReadVariableOp2^
-sequential_38/conv2d_57/Conv2D/ReadVariableOp-sequential_38/conv2d_57/Conv2D/ReadVariableOp2`
.sequential_38/conv2d_58/BiasAdd/ReadVariableOp.sequential_38/conv2d_58/BiasAdd/ReadVariableOp2^
-sequential_38/conv2d_58/Conv2D/ReadVariableOp-sequential_38/conv2d_58/Conv2D/ReadVariableOp2`
.sequential_38/conv2d_59/BiasAdd/ReadVariableOp.sequential_38/conv2d_59/BiasAdd/ReadVariableOp2^
-sequential_38/conv2d_59/Conv2D/ReadVariableOp-sequential_38/conv2d_59/Conv2D/ReadVariableOp2^
-sequential_38/dense_38/BiasAdd/ReadVariableOp-sequential_38/dense_38/BiasAdd/ReadVariableOp2\
,sequential_38/dense_38/MatMul/ReadVariableOp,sequential_38/dense_38/MatMul/ReadVariableOp2D
 z_log_var/BiasAdd/ReadVariableOp z_log_var/BiasAdd/ReadVariableOp2B
z_log_var/MatMul/ReadVariableOpz_log_var/MatMul/ReadVariableOp2>
z_mean/BiasAdd/ReadVariableOpz_mean/BiasAdd/ReadVariableOp2<
z_mean/MatMul/ReadVariableOpz_mean/MatMul/ReadVariableOp:R N
/
_output_shapes
:€€€€€€€€€@@

_user_specified_namex
’

ё
E__inference_conv2d_57_layer_call_and_return_conditional_losses_229159

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:А*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€  А2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€@@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@@
 
_user_specified_nameinputs
с
Є
+__inference_encoder_19_layer_call_fn_229670
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity

identity_1

identity_2ИҐStatefulPartitionedCall•
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_encoder_19_layer_call_and_return_conditional_losses_2296392
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

IdentityТ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1Т

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*^
_input_shapesM
K:€€€€€€€€€@@::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:€€€€€€€€€@@
!
_user_specified_name	input_1
з3
П
F__inference_encoder_19_layer_call_and_return_conditional_losses_229639
x
sequential_38_229588
sequential_38_229590
sequential_38_229592
sequential_38_229594
sequential_38_229596
sequential_38_229598
sequential_38_229600
sequential_38_229602
z_mean_229605
z_mean_229607
z_log_var_229610
z_log_var_229612
identity

identity_1

identity_2ИҐ%sequential_38/StatefulPartitionedCallҐ!z_log_var/StatefulPartitionedCallҐz_mean/StatefulPartitionedCallї
%sequential_38/StatefulPartitionedCallStatefulPartitionedCallxsequential_38_229588sequential_38_229590sequential_38_229592sequential_38_229594sequential_38_229596sequential_38_229598sequential_38_229600sequential_38_229602*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_38_layer_call_and_return_conditional_losses_2293702'
%sequential_38/StatefulPartitionedCallµ
z_mean/StatefulPartitionedCallStatefulPartitionedCall.sequential_38/StatefulPartitionedCall:output:0z_mean_229605z_mean_229607*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_z_mean_layer_call_and_return_conditional_losses_2294622 
z_mean/StatefulPartitionedCallƒ
!z_log_var/StatefulPartitionedCallStatefulPartitionedCall.sequential_38/StatefulPartitionedCall:output:0z_log_var_229610z_log_var_229612*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_z_log_var_layer_call_and_return_conditional_losses_2294882#
!z_log_var/StatefulPartitionedCallw
sampling/ShapeShape'z_mean/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2
sampling/ShapeЖ
sampling/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
sampling/strided_slice/stackК
sampling/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
sampling/strided_slice/stack_1К
sampling/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
sampling/strided_slice/stack_2Ш
sampling/strided_sliceStridedSlicesampling/Shape:output:0%sampling/strided_slice/stack:output:0'sampling/strided_slice/stack_1:output:0'sampling/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
sampling/strided_slice{
sampling/Shape_1Shape'z_mean/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2
sampling/Shape_1К
sampling/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2 
sampling/strided_slice_1/stackО
 sampling/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 sampling/strided_slice_1/stack_1О
 sampling/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 sampling/strided_slice_1/stack_2§
sampling/strided_slice_1StridedSlicesampling/Shape_1:output:0'sampling/strided_slice_1/stack:output:0)sampling/strided_slice_1/stack_1:output:0)sampling/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
sampling/strided_slice_1ґ
sampling/random_normal/shapePacksampling/strided_slice:output:0!sampling/strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
sampling/random_normal/shape
sampling/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    2
sampling/random_normal/meanГ
sampling/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
sampling/random_normal/stddev€
+sampling/random_normal/RandomStandardNormalRandomStandardNormal%sampling/random_normal/shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
dtype0*
seed±€е)*
seed2ЊЬ72-
+sampling/random_normal/RandomStandardNormalЎ
sampling/random_normal/mulMul4sampling/random_normal/RandomStandardNormal:output:0&sampling/random_normal/stddev:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
sampling/random_normal/mulЄ
sampling/random_normalAddsampling/random_normal/mul:z:0$sampling/random_normal/mean:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
sampling/random_normale
sampling/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
sampling/mul/xЪ
sampling/mulMulsampling/mul/x:output:0*z_log_var/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
sampling/mulg
sampling/ExpExpsampling/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
sampling/ExpЗ
sampling/mul_1Mulsampling/Exp:y:0sampling/random_normal:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
sampling/mul_1Ф
sampling/addAddV2'z_mean/StatefulPartitionedCall:output:0sampling/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
sampling/addи
IdentityIdentity'z_mean/StatefulPartitionedCall:output:0&^sequential_38/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identityп

Identity_1Identity*z_log_var/StatefulPartitionedCall:output:0&^sequential_38/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1’

Identity_2Identitysampling/add:z:0&^sequential_38/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*^
_input_shapesM
K:€€€€€€€€€@@::::::::::::2N
%sequential_38/StatefulPartitionedCall%sequential_38/StatefulPartitionedCall2F
!z_log_var/StatefulPartitionedCall!z_log_var/StatefulPartitionedCall2@
z_mean/StatefulPartitionedCallz_mean/StatefulPartitionedCall:R N
/
_output_shapes
:€€€€€€€€€@@

_user_specified_namex
У	
ё
E__inference_z_log_var_layer_call_and_return_conditional_losses_230081

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ВГ
Е
!__inference__wrapped_model_229144
input_1E
Aencoder_19_sequential_38_conv2d_57_conv2d_readvariableop_resourceF
Bencoder_19_sequential_38_conv2d_57_biasadd_readvariableop_resourceE
Aencoder_19_sequential_38_conv2d_58_conv2d_readvariableop_resourceF
Bencoder_19_sequential_38_conv2d_58_biasadd_readvariableop_resourceE
Aencoder_19_sequential_38_conv2d_59_conv2d_readvariableop_resourceF
Bencoder_19_sequential_38_conv2d_59_biasadd_readvariableop_resourceD
@encoder_19_sequential_38_dense_38_matmul_readvariableop_resourceE
Aencoder_19_sequential_38_dense_38_biasadd_readvariableop_resource4
0encoder_19_z_mean_matmul_readvariableop_resource5
1encoder_19_z_mean_biasadd_readvariableop_resource7
3encoder_19_z_log_var_matmul_readvariableop_resource8
4encoder_19_z_log_var_biasadd_readvariableop_resource
identity

identity_1

identity_2ИҐ9encoder_19/sequential_38/conv2d_57/BiasAdd/ReadVariableOpҐ8encoder_19/sequential_38/conv2d_57/Conv2D/ReadVariableOpҐ9encoder_19/sequential_38/conv2d_58/BiasAdd/ReadVariableOpҐ8encoder_19/sequential_38/conv2d_58/Conv2D/ReadVariableOpҐ9encoder_19/sequential_38/conv2d_59/BiasAdd/ReadVariableOpҐ8encoder_19/sequential_38/conv2d_59/Conv2D/ReadVariableOpҐ8encoder_19/sequential_38/dense_38/BiasAdd/ReadVariableOpҐ7encoder_19/sequential_38/dense_38/MatMul/ReadVariableOpҐ+encoder_19/z_log_var/BiasAdd/ReadVariableOpҐ*encoder_19/z_log_var/MatMul/ReadVariableOpҐ(encoder_19/z_mean/BiasAdd/ReadVariableOpҐ'encoder_19/z_mean/MatMul/ReadVariableOp€
8encoder_19/sequential_38/conv2d_57/Conv2D/ReadVariableOpReadVariableOpAencoder_19_sequential_38_conv2d_57_conv2d_readvariableop_resource*'
_output_shapes
:А*
dtype02:
8encoder_19/sequential_38/conv2d_57/Conv2D/ReadVariableOpО
)encoder_19/sequential_38/conv2d_57/Conv2DConv2Dinput_1@encoder_19/sequential_38/conv2d_57/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
2+
)encoder_19/sequential_38/conv2d_57/Conv2Dц
9encoder_19/sequential_38/conv2d_57/BiasAdd/ReadVariableOpReadVariableOpBencoder_19_sequential_38_conv2d_57_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02;
9encoder_19/sequential_38/conv2d_57/BiasAdd/ReadVariableOpХ
*encoder_19/sequential_38/conv2d_57/BiasAddBiasAdd2encoder_19/sequential_38/conv2d_57/Conv2D:output:0Aencoder_19/sequential_38/conv2d_57/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А2,
*encoder_19/sequential_38/conv2d_57/BiasAdd 
'encoder_19/sequential_38/conv2d_57/ReluRelu3encoder_19/sequential_38/conv2d_57/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А2)
'encoder_19/sequential_38/conv2d_57/ReluА
8encoder_19/sequential_38/conv2d_58/Conv2D/ReadVariableOpReadVariableOpAencoder_19_sequential_38_conv2d_58_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02:
8encoder_19/sequential_38/conv2d_58/Conv2D/ReadVariableOpЉ
)encoder_19/sequential_38/conv2d_58/Conv2DConv2D5encoder_19/sequential_38/conv2d_57/Relu:activations:0@encoder_19/sequential_38/conv2d_58/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2+
)encoder_19/sequential_38/conv2d_58/Conv2Dц
9encoder_19/sequential_38/conv2d_58/BiasAdd/ReadVariableOpReadVariableOpBencoder_19_sequential_38_conv2d_58_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02;
9encoder_19/sequential_38/conv2d_58/BiasAdd/ReadVariableOpХ
*encoder_19/sequential_38/conv2d_58/BiasAddBiasAdd2encoder_19/sequential_38/conv2d_58/Conv2D:output:0Aencoder_19/sequential_38/conv2d_58/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2,
*encoder_19/sequential_38/conv2d_58/BiasAdd 
'encoder_19/sequential_38/conv2d_58/ReluRelu3encoder_19/sequential_38/conv2d_58/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2)
'encoder_19/sequential_38/conv2d_58/ReluА
8encoder_19/sequential_38/conv2d_59/Conv2D/ReadVariableOpReadVariableOpAencoder_19_sequential_38_conv2d_59_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02:
8encoder_19/sequential_38/conv2d_59/Conv2D/ReadVariableOpЉ
)encoder_19/sequential_38/conv2d_59/Conv2DConv2D5encoder_19/sequential_38/conv2d_58/Relu:activations:0@encoder_19/sequential_38/conv2d_59/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2+
)encoder_19/sequential_38/conv2d_59/Conv2Dц
9encoder_19/sequential_38/conv2d_59/BiasAdd/ReadVariableOpReadVariableOpBencoder_19_sequential_38_conv2d_59_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02;
9encoder_19/sequential_38/conv2d_59/BiasAdd/ReadVariableOpХ
*encoder_19/sequential_38/conv2d_59/BiasAddBiasAdd2encoder_19/sequential_38/conv2d_59/Conv2D:output:0Aencoder_19/sequential_38/conv2d_59/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2,
*encoder_19/sequential_38/conv2d_59/BiasAdd 
'encoder_19/sequential_38/conv2d_59/ReluRelu3encoder_19/sequential_38/conv2d_59/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2)
'encoder_19/sequential_38/conv2d_59/ReluІ
)encoder_19/sequential_38/flatten_19/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ А  2+
)encoder_19/sequential_38/flatten_19/ConstД
+encoder_19/sequential_38/flatten_19/ReshapeReshape5encoder_19/sequential_38/conv2d_59/Relu:activations:02encoder_19/sequential_38/flatten_19/Const:output:0*
T0*)
_output_shapes
:€€€€€€€€€АА2-
+encoder_19/sequential_38/flatten_19/Reshapeх
7encoder_19/sequential_38/dense_38/MatMul/ReadVariableOpReadVariableOp@encoder_19_sequential_38_dense_38_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype029
7encoder_19/sequential_38/dense_38/MatMul/ReadVariableOpЗ
(encoder_19/sequential_38/dense_38/MatMulMatMul4encoder_19/sequential_38/flatten_19/Reshape:output:0?encoder_19/sequential_38/dense_38/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2*
(encoder_19/sequential_38/dense_38/MatMulт
8encoder_19/sequential_38/dense_38/BiasAdd/ReadVariableOpReadVariableOpAencoder_19_sequential_38_dense_38_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02:
8encoder_19/sequential_38/dense_38/BiasAdd/ReadVariableOpЙ
)encoder_19/sequential_38/dense_38/BiasAddBiasAdd2encoder_19/sequential_38/dense_38/MatMul:product:0@encoder_19/sequential_38/dense_38/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2+
)encoder_19/sequential_38/dense_38/BiasAddЊ
&encoder_19/sequential_38/dense_38/ReluRelu2encoder_19/sequential_38/dense_38/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2(
&encoder_19/sequential_38/dense_38/Relu√
'encoder_19/z_mean/MatMul/ReadVariableOpReadVariableOp0encoder_19_z_mean_matmul_readvariableop_resource*
_output_shapes

:*
dtype02)
'encoder_19/z_mean/MatMul/ReadVariableOp„
encoder_19/z_mean/MatMulMatMul4encoder_19/sequential_38/dense_38/Relu:activations:0/encoder_19/z_mean/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
encoder_19/z_mean/MatMul¬
(encoder_19/z_mean/BiasAdd/ReadVariableOpReadVariableOp1encoder_19_z_mean_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(encoder_19/z_mean/BiasAdd/ReadVariableOp…
encoder_19/z_mean/BiasAddBiasAdd"encoder_19/z_mean/MatMul:product:00encoder_19/z_mean/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
encoder_19/z_mean/BiasAddћ
*encoder_19/z_log_var/MatMul/ReadVariableOpReadVariableOp3encoder_19_z_log_var_matmul_readvariableop_resource*
_output_shapes

:*
dtype02,
*encoder_19/z_log_var/MatMul/ReadVariableOpа
encoder_19/z_log_var/MatMulMatMul4encoder_19/sequential_38/dense_38/Relu:activations:02encoder_19/z_log_var/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
encoder_19/z_log_var/MatMulЋ
+encoder_19/z_log_var/BiasAdd/ReadVariableOpReadVariableOp4encoder_19_z_log_var_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+encoder_19/z_log_var/BiasAdd/ReadVariableOp’
encoder_19/z_log_var/BiasAddBiasAdd%encoder_19/z_log_var/MatMul:product:03encoder_19/z_log_var/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
encoder_19/z_log_var/BiasAddИ
encoder_19/sampling/ShapeShape"encoder_19/z_mean/BiasAdd:output:0*
T0*
_output_shapes
:2
encoder_19/sampling/ShapeЬ
'encoder_19/sampling/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'encoder_19/sampling/strided_slice/stack†
)encoder_19/sampling/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)encoder_19/sampling/strided_slice/stack_1†
)encoder_19/sampling/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)encoder_19/sampling/strided_slice/stack_2Џ
!encoder_19/sampling/strided_sliceStridedSlice"encoder_19/sampling/Shape:output:00encoder_19/sampling/strided_slice/stack:output:02encoder_19/sampling/strided_slice/stack_1:output:02encoder_19/sampling/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!encoder_19/sampling/strided_sliceМ
encoder_19/sampling/Shape_1Shape"encoder_19/z_mean/BiasAdd:output:0*
T0*
_output_shapes
:2
encoder_19/sampling/Shape_1†
)encoder_19/sampling/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)encoder_19/sampling/strided_slice_1/stack§
+encoder_19/sampling/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+encoder_19/sampling/strided_slice_1/stack_1§
+encoder_19/sampling/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+encoder_19/sampling/strided_slice_1/stack_2ж
#encoder_19/sampling/strided_slice_1StridedSlice$encoder_19/sampling/Shape_1:output:02encoder_19/sampling/strided_slice_1/stack:output:04encoder_19/sampling/strided_slice_1/stack_1:output:04encoder_19/sampling/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#encoder_19/sampling/strided_slice_1в
'encoder_19/sampling/random_normal/shapePack*encoder_19/sampling/strided_slice:output:0,encoder_19/sampling/strided_slice_1:output:0*
N*
T0*
_output_shapes
:2)
'encoder_19/sampling/random_normal/shapeХ
&encoder_19/sampling/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&encoder_19/sampling/random_normal/meanЩ
(encoder_19/sampling/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2*
(encoder_19/sampling/random_normal/stddev°
6encoder_19/sampling/random_normal/RandomStandardNormalRandomStandardNormal0encoder_19/sampling/random_normal/shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
dtype0*
seed±€е)*
seed2ЁУё28
6encoder_19/sampling/random_normal/RandomStandardNormalД
%encoder_19/sampling/random_normal/mulMul?encoder_19/sampling/random_normal/RandomStandardNormal:output:01encoder_19/sampling/random_normal/stddev:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2'
%encoder_19/sampling/random_normal/mulд
!encoder_19/sampling/random_normalAdd)encoder_19/sampling/random_normal/mul:z:0/encoder_19/sampling/random_normal/mean:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2#
!encoder_19/sampling/random_normal{
encoder_19/sampling/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
encoder_19/sampling/mul/xґ
encoder_19/sampling/mulMul"encoder_19/sampling/mul/x:output:0%encoder_19/z_log_var/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
encoder_19/sampling/mulИ
encoder_19/sampling/ExpExpencoder_19/sampling/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
encoder_19/sampling/Exp≥
encoder_19/sampling/mul_1Mulencoder_19/sampling/Exp:y:0%encoder_19/sampling/random_normal:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
encoder_19/sampling/mul_1∞
encoder_19/sampling/addAddV2"encoder_19/z_mean/BiasAdd:output:0encoder_19/sampling/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
encoder_19/sampling/addА
IdentityIdentity"encoder_19/z_mean/BiasAdd:output:0:^encoder_19/sequential_38/conv2d_57/BiasAdd/ReadVariableOp9^encoder_19/sequential_38/conv2d_57/Conv2D/ReadVariableOp:^encoder_19/sequential_38/conv2d_58/BiasAdd/ReadVariableOp9^encoder_19/sequential_38/conv2d_58/Conv2D/ReadVariableOp:^encoder_19/sequential_38/conv2d_59/BiasAdd/ReadVariableOp9^encoder_19/sequential_38/conv2d_59/Conv2D/ReadVariableOp9^encoder_19/sequential_38/dense_38/BiasAdd/ReadVariableOp8^encoder_19/sequential_38/dense_38/MatMul/ReadVariableOp,^encoder_19/z_log_var/BiasAdd/ReadVariableOp+^encoder_19/z_log_var/MatMul/ReadVariableOp)^encoder_19/z_mean/BiasAdd/ReadVariableOp(^encoder_19/z_mean/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

IdentityЗ

Identity_1Identity%encoder_19/z_log_var/BiasAdd:output:0:^encoder_19/sequential_38/conv2d_57/BiasAdd/ReadVariableOp9^encoder_19/sequential_38/conv2d_57/Conv2D/ReadVariableOp:^encoder_19/sequential_38/conv2d_58/BiasAdd/ReadVariableOp9^encoder_19/sequential_38/conv2d_58/Conv2D/ReadVariableOp:^encoder_19/sequential_38/conv2d_59/BiasAdd/ReadVariableOp9^encoder_19/sequential_38/conv2d_59/Conv2D/ReadVariableOp9^encoder_19/sequential_38/dense_38/BiasAdd/ReadVariableOp8^encoder_19/sequential_38/dense_38/MatMul/ReadVariableOp,^encoder_19/z_log_var/BiasAdd/ReadVariableOp+^encoder_19/z_log_var/MatMul/ReadVariableOp)^encoder_19/z_mean/BiasAdd/ReadVariableOp(^encoder_19/z_mean/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1э

Identity_2Identityencoder_19/sampling/add:z:0:^encoder_19/sequential_38/conv2d_57/BiasAdd/ReadVariableOp9^encoder_19/sequential_38/conv2d_57/Conv2D/ReadVariableOp:^encoder_19/sequential_38/conv2d_58/BiasAdd/ReadVariableOp9^encoder_19/sequential_38/conv2d_58/Conv2D/ReadVariableOp:^encoder_19/sequential_38/conv2d_59/BiasAdd/ReadVariableOp9^encoder_19/sequential_38/conv2d_59/Conv2D/ReadVariableOp9^encoder_19/sequential_38/dense_38/BiasAdd/ReadVariableOp8^encoder_19/sequential_38/dense_38/MatMul/ReadVariableOp,^encoder_19/z_log_var/BiasAdd/ReadVariableOp+^encoder_19/z_log_var/MatMul/ReadVariableOp)^encoder_19/z_mean/BiasAdd/ReadVariableOp(^encoder_19/z_mean/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*^
_input_shapesM
K:€€€€€€€€€@@::::::::::::2v
9encoder_19/sequential_38/conv2d_57/BiasAdd/ReadVariableOp9encoder_19/sequential_38/conv2d_57/BiasAdd/ReadVariableOp2t
8encoder_19/sequential_38/conv2d_57/Conv2D/ReadVariableOp8encoder_19/sequential_38/conv2d_57/Conv2D/ReadVariableOp2v
9encoder_19/sequential_38/conv2d_58/BiasAdd/ReadVariableOp9encoder_19/sequential_38/conv2d_58/BiasAdd/ReadVariableOp2t
8encoder_19/sequential_38/conv2d_58/Conv2D/ReadVariableOp8encoder_19/sequential_38/conv2d_58/Conv2D/ReadVariableOp2v
9encoder_19/sequential_38/conv2d_59/BiasAdd/ReadVariableOp9encoder_19/sequential_38/conv2d_59/BiasAdd/ReadVariableOp2t
8encoder_19/sequential_38/conv2d_59/Conv2D/ReadVariableOp8encoder_19/sequential_38/conv2d_59/Conv2D/ReadVariableOp2t
8encoder_19/sequential_38/dense_38/BiasAdd/ReadVariableOp8encoder_19/sequential_38/dense_38/BiasAdd/ReadVariableOp2r
7encoder_19/sequential_38/dense_38/MatMul/ReadVariableOp7encoder_19/sequential_38/dense_38/MatMul/ReadVariableOp2Z
+encoder_19/z_log_var/BiasAdd/ReadVariableOp+encoder_19/z_log_var/BiasAdd/ReadVariableOp2X
*encoder_19/z_log_var/MatMul/ReadVariableOp*encoder_19/z_log_var/MatMul/ReadVariableOp2T
(encoder_19/z_mean/BiasAdd/ReadVariableOp(encoder_19/z_mean/BiasAdd/ReadVariableOp2R
'encoder_19/z_mean/MatMul/ReadVariableOp'encoder_19/z_mean/MatMul/ReadVariableOp:X T
/
_output_shapes
:€€€€€€€€€@@
!
_user_specified_name	input_1
џ
|
'__inference_z_mean_layer_call_fn_230071

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_z_mean_layer_call_and_return_conditional_losses_2294622
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
¬
b
F__inference_flatten_19_layer_call_and_return_conditional_losses_230156

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ А  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:€€€€€€€€€АА2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:€€€€€€€€€АА2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ъ
•
I__inference_sequential_38_layer_call_and_return_conditional_losses_229370

inputs
conv2d_57_229348
conv2d_57_229350
conv2d_58_229353
conv2d_58_229355
conv2d_59_229358
conv2d_59_229360
dense_38_229364
dense_38_229366
identityИҐ!conv2d_57/StatefulPartitionedCallҐ!conv2d_58/StatefulPartitionedCallҐ!conv2d_59/StatefulPartitionedCallҐ dense_38/StatefulPartitionedCall•
!conv2d_57/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_57_229348conv2d_57_229350*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_57_layer_call_and_return_conditional_losses_2291592#
!conv2d_57/StatefulPartitionedCall…
!conv2d_58/StatefulPartitionedCallStatefulPartitionedCall*conv2d_57/StatefulPartitionedCall:output:0conv2d_58_229353conv2d_58_229355*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_58_layer_call_and_return_conditional_losses_2291862#
!conv2d_58/StatefulPartitionedCall…
!conv2d_59/StatefulPartitionedCallStatefulPartitionedCall*conv2d_58/StatefulPartitionedCall:output:0conv2d_59_229358conv2d_59_229360*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_59_layer_call_and_return_conditional_losses_2292132#
!conv2d_59/StatefulPartitionedCallГ
flatten_19/PartitionedCallPartitionedCall*conv2d_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_flatten_19_layer_call_and_return_conditional_losses_2292352
flatten_19/PartitionedCallі
 dense_38/StatefulPartitionedCallStatefulPartitionedCall#flatten_19/PartitionedCall:output:0dense_38_229364dense_38_229366*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_38_layer_call_and_return_conditional_losses_2292542"
 dense_38/StatefulPartitionedCallМ
IdentityIdentity)dense_38/StatefulPartitionedCall:output:0"^conv2d_57/StatefulPartitionedCall"^conv2d_58/StatefulPartitionedCall"^conv2d_59/StatefulPartitionedCall!^dense_38/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:€€€€€€€€€@@::::::::2F
!conv2d_57/StatefulPartitionedCall!conv2d_57/StatefulPartitionedCall2F
!conv2d_58/StatefulPartitionedCall!conv2d_58/StatefulPartitionedCall2F
!conv2d_59/StatefulPartitionedCall!conv2d_59/StatefulPartitionedCall2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€@@
 
_user_specified_nameinputs
г
~
)__inference_dense_38_layer_call_fn_230181

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_38_layer_call_and_return_conditional_losses_2292542
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*0
_input_shapes
:€€€€€€€€€АА::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Р	
џ
B__inference_z_mean_layer_call_and_return_conditional_losses_230062

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ѓ
G
+__inference_flatten_19_layer_call_fn_230161

inputs
identity…
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_flatten_19_layer_call_and_return_conditional_losses_2292352
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:€€€€€€€€€АА2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
®%
–
__inference__traced_save_230242
file_prefix7
3savev2_encoder_19_z_mean_kernel_read_readvariableop5
1savev2_encoder_19_z_mean_bias_read_readvariableop:
6savev2_encoder_19_z_log_var_kernel_read_readvariableop8
4savev2_encoder_19_z_log_var_bias_read_readvariableop/
+savev2_conv2d_57_kernel_read_readvariableop-
)savev2_conv2d_57_bias_read_readvariableop/
+savev2_conv2d_58_kernel_read_readvariableop-
)savev2_conv2d_58_bias_read_readvariableop/
+savev2_conv2d_59_kernel_read_readvariableop-
)savev2_conv2d_59_bias_read_readvariableop.
*savev2_dense_38_kernel_read_readvariableop,
(savev2_dense_38_bias_read_readvariableop
savev2_const

identity_1ИҐMergeV2CheckpointsП
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
Const_1Л
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
ShardedFilename/shard¶
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameЁ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*п
valueеBвB)dense_z/kernel/.ATTRIBUTES/VARIABLE_VALUEB'dense_z/bias/.ATTRIBUTES/VARIABLE_VALUEB+log_var_z/kernel/.ATTRIBUTES/VARIABLE_VALUEB)log_var_z/bias/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesҐ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesъ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:03savev2_encoder_19_z_mean_kernel_read_readvariableop1savev2_encoder_19_z_mean_bias_read_readvariableop6savev2_encoder_19_z_log_var_kernel_read_readvariableop4savev2_encoder_19_z_log_var_bias_read_readvariableop+savev2_conv2d_57_kernel_read_readvariableop)savev2_conv2d_57_bias_read_readvariableop+savev2_conv2d_58_kernel_read_readvariableop)savev2_conv2d_58_bias_read_readvariableop+savev2_conv2d_59_kernel_read_readvariableop)savev2_conv2d_59_bias_read_readvariableop*savev2_dense_38_kernel_read_readvariableop(savev2_dense_38_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
22
SaveV2Ї
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes°
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*Ы
_input_shapesЙ
Ж: :::::А:А:АА:А:АА:А:
АА:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::-)
'
_output_shapes
:А:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.	*
(
_output_shapes
:АА:!


_output_shapes	
:А:&"
 
_output_shapes
:
АА: 

_output_shapes
::

_output_shapes
: 
ё+
м
I__inference_sequential_38_layer_call_and_return_conditional_losses_230010

inputs,
(conv2d_57_conv2d_readvariableop_resource-
)conv2d_57_biasadd_readvariableop_resource,
(conv2d_58_conv2d_readvariableop_resource-
)conv2d_58_biasadd_readvariableop_resource,
(conv2d_59_conv2d_readvariableop_resource-
)conv2d_59_biasadd_readvariableop_resource+
'dense_38_matmul_readvariableop_resource,
(dense_38_biasadd_readvariableop_resource
identityИҐ conv2d_57/BiasAdd/ReadVariableOpҐconv2d_57/Conv2D/ReadVariableOpҐ conv2d_58/BiasAdd/ReadVariableOpҐconv2d_58/Conv2D/ReadVariableOpҐ conv2d_59/BiasAdd/ReadVariableOpҐconv2d_59/Conv2D/ReadVariableOpҐdense_38/BiasAdd/ReadVariableOpҐdense_38/MatMul/ReadVariableOpі
conv2d_57/Conv2D/ReadVariableOpReadVariableOp(conv2d_57_conv2d_readvariableop_resource*'
_output_shapes
:А*
dtype02!
conv2d_57/Conv2D/ReadVariableOp¬
conv2d_57/Conv2DConv2Dinputs'conv2d_57/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
2
conv2d_57/Conv2DЂ
 conv2d_57/BiasAdd/ReadVariableOpReadVariableOp)conv2d_57_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_57/BiasAdd/ReadVariableOp±
conv2d_57/BiasAddBiasAddconv2d_57/Conv2D:output:0(conv2d_57/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
conv2d_57/BiasAdd
conv2d_57/ReluReluconv2d_57/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
conv2d_57/Reluµ
conv2d_58/Conv2D/ReadVariableOpReadVariableOp(conv2d_58_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02!
conv2d_58/Conv2D/ReadVariableOpЎ
conv2d_58/Conv2DConv2Dconv2d_57/Relu:activations:0'conv2d_58/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
conv2d_58/Conv2DЂ
 conv2d_58/BiasAdd/ReadVariableOpReadVariableOp)conv2d_58_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_58/BiasAdd/ReadVariableOp±
conv2d_58/BiasAddBiasAddconv2d_58/Conv2D:output:0(conv2d_58/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_58/BiasAdd
conv2d_58/ReluReluconv2d_58/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_58/Reluµ
conv2d_59/Conv2D/ReadVariableOpReadVariableOp(conv2d_59_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02!
conv2d_59/Conv2D/ReadVariableOpЎ
conv2d_59/Conv2DConv2Dconv2d_58/Relu:activations:0'conv2d_59/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
conv2d_59/Conv2DЂ
 conv2d_59/BiasAdd/ReadVariableOpReadVariableOp)conv2d_59_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_59/BiasAdd/ReadVariableOp±
conv2d_59/BiasAddBiasAddconv2d_59/Conv2D:output:0(conv2d_59/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_59/BiasAdd
conv2d_59/ReluReluconv2d_59/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_59/Reluu
flatten_19/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ А  2
flatten_19/Const†
flatten_19/ReshapeReshapeconv2d_59/Relu:activations:0flatten_19/Const:output:0*
T0*)
_output_shapes
:€€€€€€€€€АА2
flatten_19/Reshape™
dense_38/MatMul/ReadVariableOpReadVariableOp'dense_38_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02 
dense_38/MatMul/ReadVariableOp£
dense_38/MatMulMatMulflatten_19/Reshape:output:0&dense_38/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_38/MatMulІ
dense_38/BiasAdd/ReadVariableOpReadVariableOp(dense_38_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_38/BiasAdd/ReadVariableOp•
dense_38/BiasAddBiasAdddense_38/MatMul:product:0'dense_38/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_38/BiasAdds
dense_38/ReluReludense_38/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_38/ReluБ
IdentityIdentitydense_38/Relu:activations:0!^conv2d_57/BiasAdd/ReadVariableOp ^conv2d_57/Conv2D/ReadVariableOp!^conv2d_58/BiasAdd/ReadVariableOp ^conv2d_58/Conv2D/ReadVariableOp!^conv2d_59/BiasAdd/ReadVariableOp ^conv2d_59/Conv2D/ReadVariableOp ^dense_38/BiasAdd/ReadVariableOp^dense_38/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:€€€€€€€€€@@::::::::2D
 conv2d_57/BiasAdd/ReadVariableOp conv2d_57/BiasAdd/ReadVariableOp2B
conv2d_57/Conv2D/ReadVariableOpconv2d_57/Conv2D/ReadVariableOp2D
 conv2d_58/BiasAdd/ReadVariableOp conv2d_58/BiasAdd/ReadVariableOp2B
conv2d_58/Conv2D/ReadVariableOpconv2d_58/Conv2D/ReadVariableOp2D
 conv2d_59/BiasAdd/ReadVariableOp conv2d_59/BiasAdd/ReadVariableOp2B
conv2d_59/Conv2D/ReadVariableOpconv2d_59/Conv2D/ReadVariableOp2B
dense_38/BiasAdd/ReadVariableOpdense_38/BiasAdd/ReadVariableOp2@
dense_38/MatMul/ReadVariableOpdense_38/MatMul/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@@
 
_user_specified_nameinputs
ъ3
Х
F__inference_encoder_19_layer_call_and_return_conditional_losses_229528
input_1
sequential_38_229435
sequential_38_229437
sequential_38_229439
sequential_38_229441
sequential_38_229443
sequential_38_229445
sequential_38_229447
sequential_38_229449
z_mean_229473
z_mean_229475
z_log_var_229499
z_log_var_229501
identity

identity_1

identity_2ИҐ%sequential_38/StatefulPartitionedCallҐ!z_log_var/StatefulPartitionedCallҐz_mean/StatefulPartitionedCallЅ
%sequential_38/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_38_229435sequential_38_229437sequential_38_229439sequential_38_229441sequential_38_229443sequential_38_229445sequential_38_229447sequential_38_229449*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_38_layer_call_and_return_conditional_losses_2293242'
%sequential_38/StatefulPartitionedCallµ
z_mean/StatefulPartitionedCallStatefulPartitionedCall.sequential_38/StatefulPartitionedCall:output:0z_mean_229473z_mean_229475*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_z_mean_layer_call_and_return_conditional_losses_2294622 
z_mean/StatefulPartitionedCallƒ
!z_log_var/StatefulPartitionedCallStatefulPartitionedCall.sequential_38/StatefulPartitionedCall:output:0z_log_var_229499z_log_var_229501*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_z_log_var_layer_call_and_return_conditional_losses_2294882#
!z_log_var/StatefulPartitionedCallw
sampling/ShapeShape'z_mean/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2
sampling/ShapeЖ
sampling/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
sampling/strided_slice/stackК
sampling/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
sampling/strided_slice/stack_1К
sampling/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
sampling/strided_slice/stack_2Ш
sampling/strided_sliceStridedSlicesampling/Shape:output:0%sampling/strided_slice/stack:output:0'sampling/strided_slice/stack_1:output:0'sampling/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
sampling/strided_slice{
sampling/Shape_1Shape'z_mean/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2
sampling/Shape_1К
sampling/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2 
sampling/strided_slice_1/stackО
 sampling/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 sampling/strided_slice_1/stack_1О
 sampling/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 sampling/strided_slice_1/stack_2§
sampling/strided_slice_1StridedSlicesampling/Shape_1:output:0'sampling/strided_slice_1/stack:output:0)sampling/strided_slice_1/stack_1:output:0)sampling/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
sampling/strided_slice_1ґ
sampling/random_normal/shapePacksampling/strided_slice:output:0!sampling/strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
sampling/random_normal/shape
sampling/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    2
sampling/random_normal/meanГ
sampling/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
sampling/random_normal/stddevА
+sampling/random_normal/RandomStandardNormalRandomStandardNormal%sampling/random_normal/shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
dtype0*
seed±€е)*
seed2х≤‘2-
+sampling/random_normal/RandomStandardNormalЎ
sampling/random_normal/mulMul4sampling/random_normal/RandomStandardNormal:output:0&sampling/random_normal/stddev:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
sampling/random_normal/mulЄ
sampling/random_normalAddsampling/random_normal/mul:z:0$sampling/random_normal/mean:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
sampling/random_normale
sampling/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
sampling/mul/xЪ
sampling/mulMulsampling/mul/x:output:0*z_log_var/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
sampling/mulg
sampling/ExpExpsampling/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
sampling/ExpЗ
sampling/mul_1Mulsampling/Exp:y:0sampling/random_normal:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
sampling/mul_1Ф
sampling/addAddV2'z_mean/StatefulPartitionedCall:output:0sampling/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
sampling/addи
IdentityIdentity'z_mean/StatefulPartitionedCall:output:0&^sequential_38/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identityп

Identity_1Identity*z_log_var/StatefulPartitionedCall:output:0&^sequential_38/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1’

Identity_2Identitysampling/add:z:0&^sequential_38/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*^
_input_shapesM
K:€€€€€€€€€@@::::::::::::2N
%sequential_38/StatefulPartitionedCall%sequential_38/StatefulPartitionedCall2F
!z_log_var/StatefulPartitionedCall!z_log_var/StatefulPartitionedCall2@
z_mean/StatefulPartitionedCallz_mean/StatefulPartitionedCall:X T
/
_output_shapes
:€€€€€€€€€@@
!
_user_specified_name	input_1
ъ3
Х
F__inference_encoder_19_layer_call_and_return_conditional_losses_229582
input_1
sequential_38_229531
sequential_38_229533
sequential_38_229535
sequential_38_229537
sequential_38_229539
sequential_38_229541
sequential_38_229543
sequential_38_229545
z_mean_229548
z_mean_229550
z_log_var_229553
z_log_var_229555
identity

identity_1

identity_2ИҐ%sequential_38/StatefulPartitionedCallҐ!z_log_var/StatefulPartitionedCallҐz_mean/StatefulPartitionedCallЅ
%sequential_38/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_38_229531sequential_38_229533sequential_38_229535sequential_38_229537sequential_38_229539sequential_38_229541sequential_38_229543sequential_38_229545*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_38_layer_call_and_return_conditional_losses_2293702'
%sequential_38/StatefulPartitionedCallµ
z_mean/StatefulPartitionedCallStatefulPartitionedCall.sequential_38/StatefulPartitionedCall:output:0z_mean_229548z_mean_229550*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_z_mean_layer_call_and_return_conditional_losses_2294622 
z_mean/StatefulPartitionedCallƒ
!z_log_var/StatefulPartitionedCallStatefulPartitionedCall.sequential_38/StatefulPartitionedCall:output:0z_log_var_229553z_log_var_229555*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_z_log_var_layer_call_and_return_conditional_losses_2294882#
!z_log_var/StatefulPartitionedCallw
sampling/ShapeShape'z_mean/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2
sampling/ShapeЖ
sampling/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
sampling/strided_slice/stackК
sampling/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
sampling/strided_slice/stack_1К
sampling/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
sampling/strided_slice/stack_2Ш
sampling/strided_sliceStridedSlicesampling/Shape:output:0%sampling/strided_slice/stack:output:0'sampling/strided_slice/stack_1:output:0'sampling/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
sampling/strided_slice{
sampling/Shape_1Shape'z_mean/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2
sampling/Shape_1К
sampling/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2 
sampling/strided_slice_1/stackО
 sampling/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 sampling/strided_slice_1/stack_1О
 sampling/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 sampling/strided_slice_1/stack_2§
sampling/strided_slice_1StridedSlicesampling/Shape_1:output:0'sampling/strided_slice_1/stack:output:0)sampling/strided_slice_1/stack_1:output:0)sampling/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
sampling/strided_slice_1ґ
sampling/random_normal/shapePacksampling/strided_slice:output:0!sampling/strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
sampling/random_normal/shape
sampling/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    2
sampling/random_normal/meanГ
sampling/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
sampling/random_normal/stddevА
+sampling/random_normal/RandomStandardNormalRandomStandardNormal%sampling/random_normal/shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
dtype0*
seed±€е)*
seed2ьуж2-
+sampling/random_normal/RandomStandardNormalЎ
sampling/random_normal/mulMul4sampling/random_normal/RandomStandardNormal:output:0&sampling/random_normal/stddev:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
sampling/random_normal/mulЄ
sampling/random_normalAddsampling/random_normal/mul:z:0$sampling/random_normal/mean:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
sampling/random_normale
sampling/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
sampling/mul/xЪ
sampling/mulMulsampling/mul/x:output:0*z_log_var/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
sampling/mulg
sampling/ExpExpsampling/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
sampling/ExpЗ
sampling/mul_1Mulsampling/Exp:y:0sampling/random_normal:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
sampling/mul_1Ф
sampling/addAddV2'z_mean/StatefulPartitionedCall:output:0sampling/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
sampling/addи
IdentityIdentity'z_mean/StatefulPartitionedCall:output:0&^sequential_38/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identityп

Identity_1Identity*z_log_var/StatefulPartitionedCall:output:0&^sequential_38/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1’

Identity_2Identitysampling/add:z:0&^sequential_38/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*^
_input_shapesM
K:€€€€€€€€€@@::::::::::::2N
%sequential_38/StatefulPartitionedCall%sequential_38/StatefulPartitionedCall2F
!z_log_var/StatefulPartitionedCall!z_log_var/StatefulPartitionedCall2@
z_mean/StatefulPartitionedCallz_mean/StatefulPartitionedCall:X T
/
_output_shapes
:€€€€€€€€€@@
!
_user_specified_name	input_1
¬
b
F__inference_flatten_19_layer_call_and_return_conditional_losses_229235

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ А  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:€€€€€€€€€АА2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:€€€€€€€€€АА2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ф	
Ё
D__inference_dense_38_layer_call_and_return_conditional_losses_229254

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
ReluЧ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*0
_input_shapes
:€€€€€€€€€АА::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
У	
ё
E__inference_z_log_var_layer_call_and_return_conditional_losses_229488

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
’

ё
E__inference_conv2d_57_layer_call_and_return_conditional_losses_230101

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:А*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€  А2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€@@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@@
 
_user_specified_nameinputs
ё+
м
I__inference_sequential_38_layer_call_and_return_conditional_losses_229976

inputs,
(conv2d_57_conv2d_readvariableop_resource-
)conv2d_57_biasadd_readvariableop_resource,
(conv2d_58_conv2d_readvariableop_resource-
)conv2d_58_biasadd_readvariableop_resource,
(conv2d_59_conv2d_readvariableop_resource-
)conv2d_59_biasadd_readvariableop_resource+
'dense_38_matmul_readvariableop_resource,
(dense_38_biasadd_readvariableop_resource
identityИҐ conv2d_57/BiasAdd/ReadVariableOpҐconv2d_57/Conv2D/ReadVariableOpҐ conv2d_58/BiasAdd/ReadVariableOpҐconv2d_58/Conv2D/ReadVariableOpҐ conv2d_59/BiasAdd/ReadVariableOpҐconv2d_59/Conv2D/ReadVariableOpҐdense_38/BiasAdd/ReadVariableOpҐdense_38/MatMul/ReadVariableOpі
conv2d_57/Conv2D/ReadVariableOpReadVariableOp(conv2d_57_conv2d_readvariableop_resource*'
_output_shapes
:А*
dtype02!
conv2d_57/Conv2D/ReadVariableOp¬
conv2d_57/Conv2DConv2Dinputs'conv2d_57/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А*
paddingSAME*
strides
2
conv2d_57/Conv2DЂ
 conv2d_57/BiasAdd/ReadVariableOpReadVariableOp)conv2d_57_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_57/BiasAdd/ReadVariableOp±
conv2d_57/BiasAddBiasAddconv2d_57/Conv2D:output:0(conv2d_57/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
conv2d_57/BiasAdd
conv2d_57/ReluReluconv2d_57/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€  А2
conv2d_57/Reluµ
conv2d_58/Conv2D/ReadVariableOpReadVariableOp(conv2d_58_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02!
conv2d_58/Conv2D/ReadVariableOpЎ
conv2d_58/Conv2DConv2Dconv2d_57/Relu:activations:0'conv2d_58/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
conv2d_58/Conv2DЂ
 conv2d_58/BiasAdd/ReadVariableOpReadVariableOp)conv2d_58_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_58/BiasAdd/ReadVariableOp±
conv2d_58/BiasAddBiasAddconv2d_58/Conv2D:output:0(conv2d_58/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_58/BiasAdd
conv2d_58/ReluReluconv2d_58/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_58/Reluµ
conv2d_59/Conv2D/ReadVariableOpReadVariableOp(conv2d_59_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02!
conv2d_59/Conv2D/ReadVariableOpЎ
conv2d_59/Conv2DConv2Dconv2d_58/Relu:activations:0'conv2d_59/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
conv2d_59/Conv2DЂ
 conv2d_59/BiasAdd/ReadVariableOpReadVariableOp)conv2d_59_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_59/BiasAdd/ReadVariableOp±
conv2d_59/BiasAddBiasAddconv2d_59/Conv2D:output:0(conv2d_59/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_59/BiasAdd
conv2d_59/ReluReluconv2d_59/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_59/Reluu
flatten_19/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ А  2
flatten_19/Const†
flatten_19/ReshapeReshapeconv2d_59/Relu:activations:0flatten_19/Const:output:0*
T0*)
_output_shapes
:€€€€€€€€€АА2
flatten_19/Reshape™
dense_38/MatMul/ReadVariableOpReadVariableOp'dense_38_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02 
dense_38/MatMul/ReadVariableOp£
dense_38/MatMulMatMulflatten_19/Reshape:output:0&dense_38/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_38/MatMulІ
dense_38/BiasAdd/ReadVariableOpReadVariableOp(dense_38_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_38/BiasAdd/ReadVariableOp•
dense_38/BiasAddBiasAdddense_38/MatMul:product:0'dense_38/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_38/BiasAdds
dense_38/ReluReludense_38/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_38/ReluБ
IdentityIdentitydense_38/Relu:activations:0!^conv2d_57/BiasAdd/ReadVariableOp ^conv2d_57/Conv2D/ReadVariableOp!^conv2d_58/BiasAdd/ReadVariableOp ^conv2d_58/Conv2D/ReadVariableOp!^conv2d_59/BiasAdd/ReadVariableOp ^conv2d_59/Conv2D/ReadVariableOp ^dense_38/BiasAdd/ReadVariableOp^dense_38/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:€€€€€€€€€@@::::::::2D
 conv2d_57/BiasAdd/ReadVariableOp conv2d_57/BiasAdd/ReadVariableOp2B
conv2d_57/Conv2D/ReadVariableOpconv2d_57/Conv2D/ReadVariableOp2D
 conv2d_58/BiasAdd/ReadVariableOp conv2d_58/BiasAdd/ReadVariableOp2B
conv2d_58/Conv2D/ReadVariableOpconv2d_58/Conv2D/ReadVariableOp2D
 conv2d_59/BiasAdd/ReadVariableOp conv2d_59/BiasAdd/ReadVariableOp2B
conv2d_59/Conv2D/ReadVariableOpconv2d_59/Conv2D/ReadVariableOp2B
dense_38/BiasAdd/ReadVariableOpdense_38/BiasAdd/ReadVariableOp2@
dense_38/MatMul/ReadVariableOpdense_38/MatMul/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@@
 
_user_specified_nameinputs
б

*__inference_z_log_var_layer_call_fn_230090

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_z_log_var_layer_call_and_return_conditional_losses_2294882
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ъ
•
I__inference_sequential_38_layer_call_and_return_conditional_losses_229324

inputs
conv2d_57_229302
conv2d_57_229304
conv2d_58_229307
conv2d_58_229309
conv2d_59_229312
conv2d_59_229314
dense_38_229318
dense_38_229320
identityИҐ!conv2d_57/StatefulPartitionedCallҐ!conv2d_58/StatefulPartitionedCallҐ!conv2d_59/StatefulPartitionedCallҐ dense_38/StatefulPartitionedCall•
!conv2d_57/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_57_229302conv2d_57_229304*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_57_layer_call_and_return_conditional_losses_2291592#
!conv2d_57/StatefulPartitionedCall…
!conv2d_58/StatefulPartitionedCallStatefulPartitionedCall*conv2d_57/StatefulPartitionedCall:output:0conv2d_58_229307conv2d_58_229309*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_58_layer_call_and_return_conditional_losses_2291862#
!conv2d_58/StatefulPartitionedCall…
!conv2d_59/StatefulPartitionedCallStatefulPartitionedCall*conv2d_58/StatefulPartitionedCall:output:0conv2d_59_229312conv2d_59_229314*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_59_layer_call_and_return_conditional_losses_2292132#
!conv2d_59/StatefulPartitionedCallГ
flatten_19/PartitionedCallPartitionedCall*conv2d_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_flatten_19_layer_call_and_return_conditional_losses_2292352
flatten_19/PartitionedCallі
 dense_38/StatefulPartitionedCallStatefulPartitionedCall#flatten_19/PartitionedCall:output:0dense_38_229318dense_38_229320*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_38_layer_call_and_return_conditional_losses_2292542"
 dense_38/StatefulPartitionedCallМ
IdentityIdentity)dense_38/StatefulPartitionedCall:output:0"^conv2d_57/StatefulPartitionedCall"^conv2d_58/StatefulPartitionedCall"^conv2d_59/StatefulPartitionedCall!^dense_38/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:€€€€€€€€€@@::::::::2F
!conv2d_57/StatefulPartitionedCall!conv2d_57/StatefulPartitionedCall2F
!conv2d_58/StatefulPartitionedCall!conv2d_58/StatefulPartitionedCall2F
!conv2d_59/StatefulPartitionedCall!conv2d_59/StatefulPartitionedCall2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€@@
 
_user_specified_nameinputs
Е

*__inference_conv2d_59_layer_call_fn_230150

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_59_layer_call_and_return_conditional_losses_2292132
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
я
≤
+__inference_encoder_19_layer_call_fn_229942
x
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity

identity_1

identity_2ИҐStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_encoder_19_layer_call_and_return_conditional_losses_2296392
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

IdentityТ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1Т

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*^
_input_shapesM
K:€€€€€€€€€@@::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:€€€€€€€€€@@

_user_specified_namex
†
І
I__inference_sequential_38_layer_call_and_return_conditional_losses_229271
input_39
conv2d_57_229170
conv2d_57_229172
conv2d_58_229197
conv2d_58_229199
conv2d_59_229224
conv2d_59_229226
dense_38_229265
dense_38_229267
identityИҐ!conv2d_57/StatefulPartitionedCallҐ!conv2d_58/StatefulPartitionedCallҐ!conv2d_59/StatefulPartitionedCallҐ dense_38/StatefulPartitionedCallІ
!conv2d_57/StatefulPartitionedCallStatefulPartitionedCallinput_39conv2d_57_229170conv2d_57_229172*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_57_layer_call_and_return_conditional_losses_2291592#
!conv2d_57/StatefulPartitionedCall…
!conv2d_58/StatefulPartitionedCallStatefulPartitionedCall*conv2d_57/StatefulPartitionedCall:output:0conv2d_58_229197conv2d_58_229199*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_58_layer_call_and_return_conditional_losses_2291862#
!conv2d_58/StatefulPartitionedCall…
!conv2d_59/StatefulPartitionedCallStatefulPartitionedCall*conv2d_58/StatefulPartitionedCall:output:0conv2d_59_229224conv2d_59_229226*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_59_layer_call_and_return_conditional_losses_2292132#
!conv2d_59/StatefulPartitionedCallГ
flatten_19/PartitionedCallPartitionedCall*conv2d_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_flatten_19_layer_call_and_return_conditional_losses_2292352
flatten_19/PartitionedCallі
 dense_38/StatefulPartitionedCallStatefulPartitionedCall#flatten_19/PartitionedCall:output:0dense_38_229265dense_38_229267*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_38_layer_call_and_return_conditional_losses_2292542"
 dense_38/StatefulPartitionedCallМ
IdentityIdentity)dense_38/StatefulPartitionedCall:output:0"^conv2d_57/StatefulPartitionedCall"^conv2d_58/StatefulPartitionedCall"^conv2d_59/StatefulPartitionedCall!^dense_38/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:€€€€€€€€€@@::::::::2F
!conv2d_57/StatefulPartitionedCall!conv2d_57/StatefulPartitionedCall2F
!conv2d_58/StatefulPartitionedCall!conv2d_58/StatefulPartitionedCall2F
!conv2d_59/StatefulPartitionedCall!conv2d_59/StatefulPartitionedCall2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall:Y U
/
_output_shapes
:€€€€€€€€€@@
"
_user_specified_name
input_39
Е

*__inference_conv2d_58_layer_call_fn_230130

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_58_layer_call_and_return_conditional_losses_2291862
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€  А::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€  А
 
_user_specified_nameinputs
Г

*__inference_conv2d_57_layer_call_fn_230110

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€  А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_57_layer_call_and_return_conditional_losses_2291592
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€  А2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€@@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€@@
 
_user_specified_nameinputs
ѓ5
…
"__inference__traced_restore_230288
file_prefix-
)assignvariableop_encoder_19_z_mean_kernel-
)assignvariableop_1_encoder_19_z_mean_bias2
.assignvariableop_2_encoder_19_z_log_var_kernel0
,assignvariableop_3_encoder_19_z_log_var_bias'
#assignvariableop_4_conv2d_57_kernel%
!assignvariableop_5_conv2d_57_bias'
#assignvariableop_6_conv2d_58_kernel%
!assignvariableop_7_conv2d_58_bias'
#assignvariableop_8_conv2d_59_kernel%
!assignvariableop_9_conv2d_59_bias'
#assignvariableop_10_dense_38_kernel%
!assignvariableop_11_dense_38_bias
identity_13ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_2ҐAssignVariableOp_3ҐAssignVariableOp_4ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9г
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*п
valueеBвB)dense_z/kernel/.ATTRIBUTES/VARIABLE_VALUEB'dense_z/bias/.ATTRIBUTES/VARIABLE_VALUEB+log_var_z/kernel/.ATTRIBUTES/VARIABLE_VALUEB)log_var_z/bias/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names®
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesм
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*H
_output_shapes6
4:::::::::::::*
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity®
AssignVariableOpAssignVariableOp)assignvariableop_encoder_19_z_mean_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Ѓ
AssignVariableOp_1AssignVariableOp)assignvariableop_1_encoder_19_z_mean_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2≥
AssignVariableOp_2AssignVariableOp.assignvariableop_2_encoder_19_z_log_var_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3±
AssignVariableOp_3AssignVariableOp,assignvariableop_3_encoder_19_z_log_var_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4®
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_57_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5¶
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_57_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6®
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_58_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¶
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_58_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8®
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_59_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9¶
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_59_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Ђ
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_38_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11©
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_38_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_119
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpж
Identity_12Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_12ў
Identity_13IdentityIdentity_12:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_13"#
identity_13Identity_13:output:0*E
_input_shapes4
2: ::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ў

ё
E__inference_conv2d_58_layer_call_and_return_conditional_losses_230121

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€  А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€  А
 
_user_specified_nameinputs"±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ѓ
serving_defaultЫ
C
input_18
serving_default_input_1:0€€€€€€€€€@@<
output_10
StatefulPartitionedCall:0€€€€€€€€€<
output_20
StatefulPartitionedCall:1€€€€€€€€€<
output_30
StatefulPartitionedCall:2€€€€€€€€€tensorflow/serving/predict:чы
Ё
	model
dense_z
	log_var_z
regularization_losses
trainable_variables
	variables
	keras_api

signatures
g_default_save_signature
h__call__
*i&call_and_return_all_conditional_losses"ъ
_tf_keras_modelа{"class_name": "Encoder", "name": "encoder_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "is_graph_network": false, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Encoder"}}
Г3
	layer_with_weights-0
	layer-0

layer_with_weights-1

layer-1
layer_with_weights-2
layer-2
layer-3
layer_with_weights-3
layer-4
regularization_losses
trainable_variables
	variables
	keras_api
j__call__
*k&call_and_return_all_conditional_losses"Ћ0
_tf_keras_sequentialђ0{"class_name": "Sequential", "name": "sequential_38", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_38", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_39"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_57", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_58", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_59", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Flatten", "config": {"name": "flatten_19", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_38", "trainable": true, "dtype": "float32", "units": 16, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_38", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_39"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_57", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_58", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_59", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Flatten", "config": {"name": "flatten_19", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_38", "trainable": true, "dtype": "float32", "units": 16, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}}
п

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
l__call__
*m&call_and_return_all_conditional_losses" 
_tf_keras_layer∞{"class_name": "Dense", "name": "z_mean", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "z_mean", "trainable": true, "dtype": "float32", "units": 5, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16]}}
х

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
n__call__
*o&call_and_return_all_conditional_losses"–
_tf_keras_layerґ{"class_name": "Dense", "name": "z_log_var", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "z_log_var", "trainable": true, "dtype": "float32", "units": 5, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16]}}
 "
trackable_list_wrapper
v
0
1
 2
!3
"4
#5
$6
%7
8
9
10
11"
trackable_list_wrapper
v
0
1
 2
!3
"4
#5
$6
%7
8
9
10
11"
trackable_list_wrapper
 
regularization_losses
&non_trainable_variables

'layers
(metrics
trainable_variables
)layer_metrics
	variables
*layer_regularization_losses
h__call__
g_default_save_signature
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
,
pserving_default"
signature_map
у	

kernel
bias
+regularization_losses
,trainable_variables
-	variables
.	keras_api
q__call__
*r&call_and_return_all_conditional_losses"ќ
_tf_keras_layerі{"class_name": "Conv2D", "name": "conv2d_57", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_57", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 3]}}
ч	

 kernel
!bias
/regularization_losses
0trainable_variables
1	variables
2	keras_api
s__call__
*t&call_and_return_all_conditional_losses"“
_tf_keras_layerЄ{"class_name": "Conv2D", "name": "conv2d_58", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_58", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 128]}}
ч	

"kernel
#bias
3regularization_losses
4trainable_variables
5	variables
6	keras_api
u__call__
*v&call_and_return_all_conditional_losses"“
_tf_keras_layerЄ{"class_name": "Conv2D", "name": "conv2d_59", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_59", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 128]}}
и
7regularization_losses
8trainable_variables
9	variables
:	keras_api
w__call__
*x&call_and_return_all_conditional_losses"ў
_tf_keras_layerњ{"class_name": "Flatten", "name": "flatten_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_19", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
ш

$kernel
%bias
;regularization_losses
<trainable_variables
=	variables
>	keras_api
y__call__
*z&call_and_return_all_conditional_losses"”
_tf_keras_layerє{"class_name": "Dense", "name": "dense_38", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_38", "trainable": true, "dtype": "float32", "units": 16, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32768}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32768]}}
 "
trackable_list_wrapper
X
0
1
 2
!3
"4
#5
$6
%7"
trackable_list_wrapper
X
0
1
 2
!3
"4
#5
$6
%7"
trackable_list_wrapper
≠
regularization_losses
?non_trainable_variables

@layers
Ametrics
trainable_variables
Blayer_metrics
	variables
Clayer_regularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
*:(2encoder_19/z_mean/kernel
$:"2encoder_19/z_mean/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
≠
regularization_losses
Dnon_trainable_variables

Elayers
Fmetrics
trainable_variables
Glayer_metrics
	variables
Hlayer_regularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses"
_generic_user_object
-:+2encoder_19/z_log_var/kernel
':%2encoder_19/z_log_var/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
≠
regularization_losses
Inon_trainable_variables

Jlayers
Kmetrics
trainable_variables
Llayer_metrics
	variables
Mlayer_regularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
+:)А2conv2d_57/kernel
:А2conv2d_57/bias
,:*АА2conv2d_58/kernel
:А2conv2d_58/bias
,:*АА2conv2d_59/kernel
:А2conv2d_59/bias
#:!
АА2dense_38/kernel
:2dense_38/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
≠
+regularization_losses
Nnon_trainable_variables

Olayers
Pmetrics
,trainable_variables
Qlayer_metrics
-	variables
Rlayer_regularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
≠
/regularization_losses
Snon_trainable_variables

Tlayers
Umetrics
0trainable_variables
Vlayer_metrics
1	variables
Wlayer_regularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
≠
3regularization_losses
Xnon_trainable_variables

Ylayers
Zmetrics
4trainable_variables
[layer_metrics
5	variables
\layer_regularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≠
7regularization_losses
]non_trainable_variables

^layers
_metrics
8trainable_variables
`layer_metrics
9	variables
alayer_regularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
≠
;regularization_losses
bnon_trainable_variables

clayers
dmetrics
<trainable_variables
elayer_metrics
=	variables
flayer_regularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
C
	0

1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
з2д
!__inference__wrapped_model_229144Њ
Л≤З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *.Ґ+
)К&
input_1€€€€€€€€€@@
и2е
+__inference_encoder_19_layer_call_fn_229909
+__inference_encoder_19_layer_call_fn_229942
+__inference_encoder_19_layer_call_fn_229703
+__inference_encoder_19_layer_call_fn_229670Ѓ
•≤°
FullArgSpec$
argsЪ
jself
jx

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
‘2—
F__inference_encoder_19_layer_call_and_return_conditional_losses_229528
F__inference_encoder_19_layer_call_and_return_conditional_losses_229876
F__inference_encoder_19_layer_call_and_return_conditional_losses_229582
F__inference_encoder_19_layer_call_and_return_conditional_losses_229807Ѓ
•≤°
FullArgSpec$
argsЪ
jself
jx

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ж2Г
.__inference_sequential_38_layer_call_fn_230031
.__inference_sequential_38_layer_call_fn_229389
.__inference_sequential_38_layer_call_fn_230052
.__inference_sequential_38_layer_call_fn_229343ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
т2п
I__inference_sequential_38_layer_call_and_return_conditional_losses_229976
I__inference_sequential_38_layer_call_and_return_conditional_losses_230010
I__inference_sequential_38_layer_call_and_return_conditional_losses_229271
I__inference_sequential_38_layer_call_and_return_conditional_losses_229296ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
—2ќ
'__inference_z_mean_layer_call_fn_230071Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
м2й
B__inference_z_mean_layer_call_and_return_conditional_losses_230062Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
‘2—
*__inference_z_log_var_layer_call_fn_230090Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
п2м
E__inference_z_log_var_layer_call_and_return_conditional_losses_230081Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЋB»
$__inference_signature_wrapper_229738input_1"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
‘2—
*__inference_conv2d_57_layer_call_fn_230110Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
п2м
E__inference_conv2d_57_layer_call_and_return_conditional_losses_230101Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
‘2—
*__inference_conv2d_58_layer_call_fn_230130Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
п2м
E__inference_conv2d_58_layer_call_and_return_conditional_losses_230121Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
‘2—
*__inference_conv2d_59_layer_call_fn_230150Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
п2м
E__inference_conv2d_59_layer_call_and_return_conditional_losses_230141Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
’2“
+__inference_flatten_19_layer_call_fn_230161Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
р2н
F__inference_flatten_19_layer_call_and_return_conditional_losses_230156Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
”2–
)__inference_dense_38_layer_call_fn_230181Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
о2л
D__inference_dense_38_layer_call_and_return_conditional_losses_230172Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 Е
!__inference__wrapped_model_229144я !"#$%8Ґ5
.Ґ+
)К&
input_1€€€€€€€€€@@
™ "Ф™Р
.
output_1"К
output_1€€€€€€€€€
.
output_2"К
output_2€€€€€€€€€
.
output_3"К
output_3€€€€€€€€€ґ
E__inference_conv2d_57_layer_call_and_return_conditional_losses_230101m7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@@
™ ".Ґ+
$К!
0€€€€€€€€€  А
Ъ О
*__inference_conv2d_57_layer_call_fn_230110`7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@@
™ "!К€€€€€€€€€  АЈ
E__inference_conv2d_58_layer_call_and_return_conditional_losses_230121n !8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€  А
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ П
*__inference_conv2d_58_layer_call_fn_230130a !8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€  А
™ "!К€€€€€€€€€АЈ
E__inference_conv2d_59_layer_call_and_return_conditional_losses_230141n"#8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ П
*__inference_conv2d_59_layer_call_fn_230150a"#8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "!К€€€€€€€€€А¶
D__inference_dense_38_layer_call_and_return_conditional_losses_230172^$%1Ґ.
'Ґ$
"К
inputs€€€€€€€€€АА
™ "%Ґ"
К
0€€€€€€€€€
Ъ ~
)__inference_dense_38_layer_call_fn_230181Q$%1Ґ.
'Ґ$
"К
inputs€€€€€€€€€АА
™ "К€€€€€€€€€Г
F__inference_encoder_19_layer_call_and_return_conditional_losses_229528Є !"#$%<Ґ9
2Ґ/
)К&
input_1€€€€€€€€€@@
p
™ "jҐg
`Ъ]
К
0/0€€€€€€€€€
К
0/1€€€€€€€€€
К
0/2€€€€€€€€€
Ъ Г
F__inference_encoder_19_layer_call_and_return_conditional_losses_229582Є !"#$%<Ґ9
2Ґ/
)К&
input_1€€€€€€€€€@@
p 
™ "jҐg
`Ъ]
К
0/0€€€€€€€€€
К
0/1€€€€€€€€€
К
0/2€€€€€€€€€
Ъ э
F__inference_encoder_19_layer_call_and_return_conditional_losses_229807≤ !"#$%6Ґ3
,Ґ)
#К 
x€€€€€€€€€@@
p
™ "jҐg
`Ъ]
К
0/0€€€€€€€€€
К
0/1€€€€€€€€€
К
0/2€€€€€€€€€
Ъ э
F__inference_encoder_19_layer_call_and_return_conditional_losses_229876≤ !"#$%6Ґ3
,Ґ)
#К 
x€€€€€€€€€@@
p 
™ "jҐg
`Ъ]
К
0/0€€€€€€€€€
К
0/1€€€€€€€€€
К
0/2€€€€€€€€€
Ъ Ў
+__inference_encoder_19_layer_call_fn_229670® !"#$%<Ґ9
2Ґ/
)К&
input_1€€€€€€€€€@@
p
™ "ZЪW
К
0€€€€€€€€€
К
1€€€€€€€€€
К
2€€€€€€€€€Ў
+__inference_encoder_19_layer_call_fn_229703® !"#$%<Ґ9
2Ґ/
)К&
input_1€€€€€€€€€@@
p 
™ "ZЪW
К
0€€€€€€€€€
К
1€€€€€€€€€
К
2€€€€€€€€€“
+__inference_encoder_19_layer_call_fn_229909Ґ !"#$%6Ґ3
,Ґ)
#К 
x€€€€€€€€€@@
p
™ "ZЪW
К
0€€€€€€€€€
К
1€€€€€€€€€
К
2€€€€€€€€€“
+__inference_encoder_19_layer_call_fn_229942Ґ !"#$%6Ґ3
,Ґ)
#К 
x€€€€€€€€€@@
p 
™ "ZЪW
К
0€€€€€€€€€
К
1€€€€€€€€€
К
2€€€€€€€€€≠
F__inference_flatten_19_layer_call_and_return_conditional_losses_230156c8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "'Ґ$
К
0€€€€€€€€€АА
Ъ Е
+__inference_flatten_19_layer_call_fn_230161V8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "К€€€€€€€€€ААЅ
I__inference_sequential_38_layer_call_and_return_conditional_losses_229271t !"#$%AҐ>
7Ґ4
*К'
input_39€€€€€€€€€@@
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ Ѕ
I__inference_sequential_38_layer_call_and_return_conditional_losses_229296t !"#$%AҐ>
7Ґ4
*К'
input_39€€€€€€€€€@@
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ њ
I__inference_sequential_38_layer_call_and_return_conditional_losses_229976r !"#$%?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€@@
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ њ
I__inference_sequential_38_layer_call_and_return_conditional_losses_230010r !"#$%?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€@@
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ Щ
.__inference_sequential_38_layer_call_fn_229343g !"#$%AҐ>
7Ґ4
*К'
input_39€€€€€€€€€@@
p

 
™ "К€€€€€€€€€Щ
.__inference_sequential_38_layer_call_fn_229389g !"#$%AҐ>
7Ґ4
*К'
input_39€€€€€€€€€@@
p 

 
™ "К€€€€€€€€€Ч
.__inference_sequential_38_layer_call_fn_230031e !"#$%?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€@@
p

 
™ "К€€€€€€€€€Ч
.__inference_sequential_38_layer_call_fn_230052e !"#$%?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€@@
p 

 
™ "К€€€€€€€€€У
$__inference_signature_wrapper_229738к !"#$%CҐ@
Ґ 
9™6
4
input_1)К&
input_1€€€€€€€€€@@"Ф™Р
.
output_1"К
output_1€€€€€€€€€
.
output_2"К
output_2€€€€€€€€€
.
output_3"К
output_3€€€€€€€€€•
E__inference_z_log_var_layer_call_and_return_conditional_losses_230081\/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "%Ґ"
К
0€€€€€€€€€
Ъ }
*__inference_z_log_var_layer_call_fn_230090O/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "К€€€€€€€€€Ґ
B__inference_z_mean_layer_call_and_return_conditional_losses_230062\/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "%Ґ"
К
0€€€€€€€€€
Ъ z
'__inference_z_mean_layer_call_fn_230071O/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "К€€€€€€€€€