��
��
8
Const
output"dtype"
valuetensor"
dtypetype

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
�
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
executor_typestring �
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape�"serve*2.2.02v2.2.0-0-g2b96f3662b8��
{
Hidden_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�* 
shared_nameHidden_1/kernel
t
#Hidden_1/kernel/Read/ReadVariableOpReadVariableOpHidden_1/kernel*
_output_shapes
:	�*
dtype0
s
Hidden_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameHidden_1/bias
l
!Hidden_1/bias/Read/ReadVariableOpReadVariableOpHidden_1/bias*
_output_shapes	
:�*
dtype0
|
Hidden_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��* 
shared_nameHidden_2/kernel
u
#Hidden_2/kernel/Read/ReadVariableOpReadVariableOpHidden_2/kernel* 
_output_shapes
:
��*
dtype0
s
Hidden_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameHidden_2/bias
l
!Hidden_2/bias/Read/ReadVariableOpReadVariableOpHidden_2/bias*
_output_shapes	
:�*
dtype0
�
PosQ_Output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*#
shared_namePosQ_Output/kernel
z
&PosQ_Output/kernel/Read/ReadVariableOpReadVariableOpPosQ_Output/kernel*
_output_shapes
:	�*
dtype0
x
PosQ_Output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_namePosQ_Output/bias
q
$PosQ_Output/bias/Read/ReadVariableOpReadVariableOpPosQ_Output/bias*
_output_shapes
:*
dtype0
�
NegQ_Output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*#
shared_nameNegQ_Output/kernel
z
&NegQ_Output/kernel/Read/ReadVariableOpReadVariableOpNegQ_Output/kernel*
_output_shapes
:	�*
dtype0
x
NegQ_Output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameNegQ_Output/bias
q
$NegQ_Output/bias/Read/ReadVariableOpReadVariableOpNegQ_Output/bias*
_output_shapes
:*
dtype0

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
	variables
regularization_losses
trainable_variables
		keras_api


signatures
 
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
 regularization_losses
!trainable_variables
"	keras_api
8
0
1
2
3
4
5
6
7
 
8
0
1
2
3
4
5
6
7
�
	variables
#non_trainable_variables
$layer_metrics
%metrics
regularization_losses
trainable_variables
&layer_regularization_losses

'layers
 
[Y
VARIABLE_VALUEHidden_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEHidden_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
�
	variables
(non_trainable_variables
)layer_metrics

*layers
regularization_losses
trainable_variables
+layer_regularization_losses
,metrics
[Y
VARIABLE_VALUEHidden_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEHidden_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
�
	variables
-non_trainable_variables
.layer_metrics

/layers
regularization_losses
trainable_variables
0layer_regularization_losses
1metrics
^\
VARIABLE_VALUEPosQ_Output/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEPosQ_Output/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
�
	variables
2non_trainable_variables
3layer_metrics

4layers
regularization_losses
trainable_variables
5layer_regularization_losses
6metrics
^\
VARIABLE_VALUENegQ_Output/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUENegQ_Output/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
�
	variables
7non_trainable_variables
8layer_metrics

9layers
 regularization_losses
!trainable_variables
:layer_regularization_losses
;metrics
 
 
 
 
#
0
1
2
3
4
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
x
serving_default_InputPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_InputHidden_1/kernelHidden_1/biasHidden_2/kernelHidden_2/biasNegQ_Output/kernelNegQ_Output/biasPosQ_Output/kernelPosQ_Output/bias*
Tin
2	*
Tout
2*:
_output_shapes(
&:���������:���������**
_read_only_resource_inputs

*/
config_proto

CPU

GPU2 *0J 8*0
f+R)
'__inference_signature_wrapper_331486904
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#Hidden_1/kernel/Read/ReadVariableOp!Hidden_1/bias/Read/ReadVariableOp#Hidden_2/kernel/Read/ReadVariableOp!Hidden_2/bias/Read/ReadVariableOp&PosQ_Output/kernel/Read/ReadVariableOp$PosQ_Output/bias/Read/ReadVariableOp&NegQ_Output/kernel/Read/ReadVariableOp$NegQ_Output/bias/Read/ReadVariableOpConst*
Tin
2
*
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 */
config_proto

CPU

GPU2 *0J 8*+
f&R$
"__inference__traced_save_331487142
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameHidden_1/kernelHidden_1/biasHidden_2/kernelHidden_2/biasPosQ_Output/kernelPosQ_Output/biasNegQ_Output/kernelNegQ_Output/bias*
Tin
2	*
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 */
config_proto

CPU

GPU2 *0J 8*.
f)R'
%__inference__traced_restore_331487178ο
�
�
J__inference_PosQ_Output_layer_call_and_return_conditional_losses_331487062

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAddd
IdentityIdentityBiasAdd:output:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������:::P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
�
�
,__inference_Hidden_1_layer_call_fn_331487032

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*(
_output_shapes
:����������*$
_read_only_resource_inputs
*/
config_proto

CPU

GPU2 *0J 8*P
fKRI
G__inference_Hidden_1_layer_call_and_return_conditional_losses_3314866602
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
�
�
G__inference_Hidden_1_layer_call_and_return_conditional_losses_331487023

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������:::O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
�
�
J__inference_NegQ_Output_layer_call_and_return_conditional_losses_331487081

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAddd
IdentityIdentityBiasAdd:output:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������:::P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
�
�
-__inference_LogDQNnet_layer_call_fn_331486879	
input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*:
_output_shapes(
&:���������:���������**
_read_only_resource_inputs

*/
config_proto

CPU

GPU2 *0J 8*Q
fLRJ
H__inference_LogDQNnet_layer_call_and_return_conditional_losses_3314868582
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:���������::::::::22
StatefulPartitionedCallStatefulPartitionedCall:N J
'
_output_shapes
:���������

_user_specified_nameInput:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�*
�
%__inference__traced_restore_331487178
file_prefix$
 assignvariableop_hidden_1_kernel$
 assignvariableop_1_hidden_1_bias&
"assignvariableop_2_hidden_2_kernel$
 assignvariableop_3_hidden_2_bias)
%assignvariableop_4_posq_output_kernel'
#assignvariableop_5_posq_output_bias)
%assignvariableop_6_negq_output_kernel'
#assignvariableop_7_negq_output_bias

identity_9��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�	RestoreV2�RestoreV2_1�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*#
valueBB B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*4
_output_shapes"
 ::::::::*
dtypes

22
	RestoreV2X
IdentityIdentityRestoreV2:tensors:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp assignvariableop_hidden_1_kernelIdentity:output:0*
_output_shapes
 *
dtype02
AssignVariableOp\

Identity_1IdentityRestoreV2:tensors:1*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp assignvariableop_1_hidden_1_biasIdentity_1:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_1\

Identity_2IdentityRestoreV2:tensors:2*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_hidden_2_kernelIdentity_2:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_2\

Identity_3IdentityRestoreV2:tensors:3*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp assignvariableop_3_hidden_2_biasIdentity_3:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_3\

Identity_4IdentityRestoreV2:tensors:4*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp%assignvariableop_4_posq_output_kernelIdentity_4:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_4\

Identity_5IdentityRestoreV2:tensors:5*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp#assignvariableop_5_posq_output_biasIdentity_5:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_5\

Identity_6IdentityRestoreV2:tensors:6*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp%assignvariableop_6_negq_output_kernelIdentity_6:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_6\

Identity_7IdentityRestoreV2:tensors:7*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp#assignvariableop_7_negq_output_biasIdentity_7:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_7�
RestoreV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2_1/tensor_names�
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 2
RestoreV2_1/shape_and_slices�
RestoreV2_1	RestoreV2file_prefix!RestoreV2_1/tensor_names:output:0%RestoreV2_1/shape_and_slices:output:0
^RestoreV2"/device:CPU:0*
_output_shapes
:*
dtypes
22
RestoreV2_19
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�

Identity_8Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_8�

Identity_9IdentityIdentity_8:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7
^RestoreV2^RestoreV2_1*
T0*
_output_shapes
: 2

Identity_9"!

identity_9Identity_9:output:0*5
_input_shapes$
": ::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72
	RestoreV2	RestoreV22
RestoreV2_1RestoreV2_1:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
� 
�
H__inference_LogDQNnet_layer_call_and_return_conditional_losses_331486935

inputs+
'hidden_1_matmul_readvariableop_resource,
(hidden_1_biasadd_readvariableop_resource+
'hidden_2_matmul_readvariableop_resource,
(hidden_2_biasadd_readvariableop_resource.
*negq_output_matmul_readvariableop_resource/
+negq_output_biasadd_readvariableop_resource.
*posq_output_matmul_readvariableop_resource/
+posq_output_biasadd_readvariableop_resource
identity

identity_1��
Hidden_1/MatMul/ReadVariableOpReadVariableOp'hidden_1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02 
Hidden_1/MatMul/ReadVariableOp�
Hidden_1/MatMulMatMulinputs&Hidden_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
Hidden_1/MatMul�
Hidden_1/BiasAdd/ReadVariableOpReadVariableOp(hidden_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
Hidden_1/BiasAdd/ReadVariableOp�
Hidden_1/BiasAddBiasAddHidden_1/MatMul:product:0'Hidden_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
Hidden_1/BiasAddt
Hidden_1/ReluReluHidden_1/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
Hidden_1/Relu�
Hidden_2/MatMul/ReadVariableOpReadVariableOp'hidden_2_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02 
Hidden_2/MatMul/ReadVariableOp�
Hidden_2/MatMulMatMulHidden_1/Relu:activations:0&Hidden_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
Hidden_2/MatMul�
Hidden_2/BiasAdd/ReadVariableOpReadVariableOp(hidden_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
Hidden_2/BiasAdd/ReadVariableOp�
Hidden_2/BiasAddBiasAddHidden_2/MatMul:product:0'Hidden_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
Hidden_2/BiasAddt
Hidden_2/ReluReluHidden_2/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
Hidden_2/Relu�
!NegQ_Output/MatMul/ReadVariableOpReadVariableOp*negq_output_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02#
!NegQ_Output/MatMul/ReadVariableOp�
NegQ_Output/MatMulMatMulHidden_2/Relu:activations:0)NegQ_Output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
NegQ_Output/MatMul�
"NegQ_Output/BiasAdd/ReadVariableOpReadVariableOp+negq_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"NegQ_Output/BiasAdd/ReadVariableOp�
NegQ_Output/BiasAddBiasAddNegQ_Output/MatMul:product:0*NegQ_Output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
NegQ_Output/BiasAdd�
!PosQ_Output/MatMul/ReadVariableOpReadVariableOp*posq_output_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02#
!PosQ_Output/MatMul/ReadVariableOp�
PosQ_Output/MatMulMatMulHidden_2/Relu:activations:0)PosQ_Output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
PosQ_Output/MatMul�
"PosQ_Output/BiasAdd/ReadVariableOpReadVariableOp+posq_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"PosQ_Output/BiasAdd/ReadVariableOp�
PosQ_Output/BiasAddBiasAddPosQ_Output/MatMul:product:0*PosQ_Output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
PosQ_Output/BiasAddp
IdentityIdentityPosQ_Output/BiasAdd:output:0*
T0*'
_output_shapes
:���������2

Identityt

Identity_1IdentityNegQ_Output/BiasAdd:output:0*
T0*'
_output_shapes
:���������2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:���������:::::::::O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�&
�
$__inference__wrapped_model_331486645	
input5
1logdqnnet_hidden_1_matmul_readvariableop_resource6
2logdqnnet_hidden_1_biasadd_readvariableop_resource5
1logdqnnet_hidden_2_matmul_readvariableop_resource6
2logdqnnet_hidden_2_biasadd_readvariableop_resource8
4logdqnnet_negq_output_matmul_readvariableop_resource9
5logdqnnet_negq_output_biasadd_readvariableop_resource8
4logdqnnet_posq_output_matmul_readvariableop_resource9
5logdqnnet_posq_output_biasadd_readvariableop_resource
identity

identity_1��
(LogDQNnet/Hidden_1/MatMul/ReadVariableOpReadVariableOp1logdqnnet_hidden_1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02*
(LogDQNnet/Hidden_1/MatMul/ReadVariableOp�
LogDQNnet/Hidden_1/MatMulMatMulinput0LogDQNnet/Hidden_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
LogDQNnet/Hidden_1/MatMul�
)LogDQNnet/Hidden_1/BiasAdd/ReadVariableOpReadVariableOp2logdqnnet_hidden_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02+
)LogDQNnet/Hidden_1/BiasAdd/ReadVariableOp�
LogDQNnet/Hidden_1/BiasAddBiasAdd#LogDQNnet/Hidden_1/MatMul:product:01LogDQNnet/Hidden_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
LogDQNnet/Hidden_1/BiasAdd�
LogDQNnet/Hidden_1/ReluRelu#LogDQNnet/Hidden_1/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
LogDQNnet/Hidden_1/Relu�
(LogDQNnet/Hidden_2/MatMul/ReadVariableOpReadVariableOp1logdqnnet_hidden_2_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02*
(LogDQNnet/Hidden_2/MatMul/ReadVariableOp�
LogDQNnet/Hidden_2/MatMulMatMul%LogDQNnet/Hidden_1/Relu:activations:00LogDQNnet/Hidden_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
LogDQNnet/Hidden_2/MatMul�
)LogDQNnet/Hidden_2/BiasAdd/ReadVariableOpReadVariableOp2logdqnnet_hidden_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02+
)LogDQNnet/Hidden_2/BiasAdd/ReadVariableOp�
LogDQNnet/Hidden_2/BiasAddBiasAdd#LogDQNnet/Hidden_2/MatMul:product:01LogDQNnet/Hidden_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
LogDQNnet/Hidden_2/BiasAdd�
LogDQNnet/Hidden_2/ReluRelu#LogDQNnet/Hidden_2/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
LogDQNnet/Hidden_2/Relu�
+LogDQNnet/NegQ_Output/MatMul/ReadVariableOpReadVariableOp4logdqnnet_negq_output_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02-
+LogDQNnet/NegQ_Output/MatMul/ReadVariableOp�
LogDQNnet/NegQ_Output/MatMulMatMul%LogDQNnet/Hidden_2/Relu:activations:03LogDQNnet/NegQ_Output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
LogDQNnet/NegQ_Output/MatMul�
,LogDQNnet/NegQ_Output/BiasAdd/ReadVariableOpReadVariableOp5logdqnnet_negq_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,LogDQNnet/NegQ_Output/BiasAdd/ReadVariableOp�
LogDQNnet/NegQ_Output/BiasAddBiasAdd&LogDQNnet/NegQ_Output/MatMul:product:04LogDQNnet/NegQ_Output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
LogDQNnet/NegQ_Output/BiasAdd�
+LogDQNnet/PosQ_Output/MatMul/ReadVariableOpReadVariableOp4logdqnnet_posq_output_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02-
+LogDQNnet/PosQ_Output/MatMul/ReadVariableOp�
LogDQNnet/PosQ_Output/MatMulMatMul%LogDQNnet/Hidden_2/Relu:activations:03LogDQNnet/PosQ_Output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
LogDQNnet/PosQ_Output/MatMul�
,LogDQNnet/PosQ_Output/BiasAdd/ReadVariableOpReadVariableOp5logdqnnet_posq_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,LogDQNnet/PosQ_Output/BiasAdd/ReadVariableOp�
LogDQNnet/PosQ_Output/BiasAddBiasAdd&LogDQNnet/PosQ_Output/MatMul:product:04LogDQNnet/PosQ_Output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
LogDQNnet/PosQ_Output/BiasAddz
IdentityIdentity&LogDQNnet/NegQ_Output/BiasAdd:output:0*
T0*'
_output_shapes
:���������2

Identity~

Identity_1Identity&LogDQNnet/PosQ_Output/BiasAdd:output:0*
T0*'
_output_shapes
:���������2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:���������:::::::::N J
'
_output_shapes
:���������

_user_specified_nameInput:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
G__inference_Hidden_2_layer_call_and_return_conditional_losses_331486687

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������:::P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
�
�
H__inference_LogDQNnet_layer_call_and_return_conditional_losses_331486757	
input
hidden_1_331486671
hidden_1_331486673
hidden_2_331486698
hidden_2_331486700
negq_output_331486724
negq_output_331486726
posq_output_331486750
posq_output_331486752
identity

identity_1�� Hidden_1/StatefulPartitionedCall� Hidden_2/StatefulPartitionedCall�#NegQ_Output/StatefulPartitionedCall�#PosQ_Output/StatefulPartitionedCall�
 Hidden_1/StatefulPartitionedCallStatefulPartitionedCallinputhidden_1_331486671hidden_1_331486673*
Tin
2*
Tout
2*(
_output_shapes
:����������*$
_read_only_resource_inputs
*/
config_proto

CPU

GPU2 *0J 8*P
fKRI
G__inference_Hidden_1_layer_call_and_return_conditional_losses_3314866602"
 Hidden_1/StatefulPartitionedCall�
 Hidden_2/StatefulPartitionedCallStatefulPartitionedCall)Hidden_1/StatefulPartitionedCall:output:0hidden_2_331486698hidden_2_331486700*
Tin
2*
Tout
2*(
_output_shapes
:����������*$
_read_only_resource_inputs
*/
config_proto

CPU

GPU2 *0J 8*P
fKRI
G__inference_Hidden_2_layer_call_and_return_conditional_losses_3314866872"
 Hidden_2/StatefulPartitionedCall�
#NegQ_Output/StatefulPartitionedCallStatefulPartitionedCall)Hidden_2/StatefulPartitionedCall:output:0negq_output_331486724negq_output_331486726*
Tin
2*
Tout
2*'
_output_shapes
:���������*$
_read_only_resource_inputs
*/
config_proto

CPU

GPU2 *0J 8*S
fNRL
J__inference_NegQ_Output_layer_call_and_return_conditional_losses_3314867132%
#NegQ_Output/StatefulPartitionedCall�
#PosQ_Output/StatefulPartitionedCallStatefulPartitionedCall)Hidden_2/StatefulPartitionedCall:output:0posq_output_331486750posq_output_331486752*
Tin
2*
Tout
2*'
_output_shapes
:���������*$
_read_only_resource_inputs
*/
config_proto

CPU

GPU2 *0J 8*S
fNRL
J__inference_PosQ_Output_layer_call_and_return_conditional_losses_3314867392%
#PosQ_Output/StatefulPartitionedCall�
IdentityIdentity,PosQ_Output/StatefulPartitionedCall:output:0!^Hidden_1/StatefulPartitionedCall!^Hidden_2/StatefulPartitionedCall$^NegQ_Output/StatefulPartitionedCall$^PosQ_Output/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity�

Identity_1Identity,NegQ_Output/StatefulPartitionedCall:output:0!^Hidden_1/StatefulPartitionedCall!^Hidden_2/StatefulPartitionedCall$^NegQ_Output/StatefulPartitionedCall$^PosQ_Output/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:���������::::::::2D
 Hidden_1/StatefulPartitionedCall Hidden_1/StatefulPartitionedCall2D
 Hidden_2/StatefulPartitionedCall Hidden_2/StatefulPartitionedCall2J
#NegQ_Output/StatefulPartitionedCall#NegQ_Output/StatefulPartitionedCall2J
#PosQ_Output/StatefulPartitionedCall#PosQ_Output/StatefulPartitionedCall:N J
'
_output_shapes
:���������

_user_specified_nameInput:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
'__inference_signature_wrapper_331486904	
input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*:
_output_shapes(
&:���������:���������**
_read_only_resource_inputs

*/
config_proto

CPU

GPU2 *0J 8*-
f(R&
$__inference__wrapped_model_3314866452
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:���������::::::::22
StatefulPartitionedCallStatefulPartitionedCall:N J
'
_output_shapes
:���������

_user_specified_nameInput:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�&
�
"__inference__traced_save_331487142
file_prefix.
*savev2_hidden_1_kernel_read_readvariableop,
(savev2_hidden_1_bias_read_readvariableop.
*savev2_hidden_2_kernel_read_readvariableop,
(savev2_hidden_2_bias_read_readvariableop1
-savev2_posq_output_kernel_read_readvariableop/
+savev2_posq_output_bias_read_readvariableop1
-savev2_negq_output_kernel_read_readvariableop/
+savev2_negq_output_bias_read_readvariableop
savev2_1_const

identity_1��MergeV2Checkpoints�SaveV2�SaveV2_1�
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
Const�
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*<
value3B1 B+_temp_1e260693f1dd410198a1d8dbb61dcde1/part2	
Const_1�
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
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*#
valueBB B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_hidden_1_kernel_read_readvariableop(savev2_hidden_1_bias_read_readvariableop*savev2_hidden_2_kernel_read_readvariableop(savev2_hidden_2_bias_read_readvariableop-savev2_posq_output_kernel_read_readvariableop+savev2_posq_output_bias_read_readvariableop-savev2_negq_output_kernel_read_readvariableop+savev2_negq_output_bias_read_readvariableop"/device:CPU:0*
_output_shapes
 *
dtypes

22
SaveV2�
ShardedFilename_1/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B :2
ShardedFilename_1/shard�
ShardedFilename_1ShardedFilenameStringJoin:output:0 ShardedFilename_1/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename_1�
SaveV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2_1/tensor_names�
SaveV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 2
SaveV2_1/shape_and_slices�
SaveV2_1SaveV2ShardedFilename_1:filename:0SaveV2_1/tensor_names:output:0"SaveV2_1/shape_and_slices:output:0savev2_1_const^SaveV2"/device:CPU:0*
_output_shapes
 *
dtypes
22

SaveV2_1�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0ShardedFilename_1:filename:0^SaveV2	^SaveV2_1"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix	^SaveV2_1"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity�

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints^SaveV2	^SaveV2_1*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*^
_input_shapesM
K: :	�:�:
��:�:	�::	�:: 2(
MergeV2CheckpointsMergeV2Checkpoints2
SaveV2SaveV22
SaveV2_1SaveV2_1:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	�:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:%!

_output_shapes
:	�: 

_output_shapes
::%!

_output_shapes
:	�: 

_output_shapes
::	

_output_shapes
: 
�
�
G__inference_Hidden_2_layer_call_and_return_conditional_losses_331487043

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������:::P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
� 
�
H__inference_LogDQNnet_layer_call_and_return_conditional_losses_331486966

inputs+
'hidden_1_matmul_readvariableop_resource,
(hidden_1_biasadd_readvariableop_resource+
'hidden_2_matmul_readvariableop_resource,
(hidden_2_biasadd_readvariableop_resource.
*negq_output_matmul_readvariableop_resource/
+negq_output_biasadd_readvariableop_resource.
*posq_output_matmul_readvariableop_resource/
+posq_output_biasadd_readvariableop_resource
identity

identity_1��
Hidden_1/MatMul/ReadVariableOpReadVariableOp'hidden_1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02 
Hidden_1/MatMul/ReadVariableOp�
Hidden_1/MatMulMatMulinputs&Hidden_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
Hidden_1/MatMul�
Hidden_1/BiasAdd/ReadVariableOpReadVariableOp(hidden_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
Hidden_1/BiasAdd/ReadVariableOp�
Hidden_1/BiasAddBiasAddHidden_1/MatMul:product:0'Hidden_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
Hidden_1/BiasAddt
Hidden_1/ReluReluHidden_1/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
Hidden_1/Relu�
Hidden_2/MatMul/ReadVariableOpReadVariableOp'hidden_2_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02 
Hidden_2/MatMul/ReadVariableOp�
Hidden_2/MatMulMatMulHidden_1/Relu:activations:0&Hidden_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
Hidden_2/MatMul�
Hidden_2/BiasAdd/ReadVariableOpReadVariableOp(hidden_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
Hidden_2/BiasAdd/ReadVariableOp�
Hidden_2/BiasAddBiasAddHidden_2/MatMul:product:0'Hidden_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
Hidden_2/BiasAddt
Hidden_2/ReluReluHidden_2/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
Hidden_2/Relu�
!NegQ_Output/MatMul/ReadVariableOpReadVariableOp*negq_output_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02#
!NegQ_Output/MatMul/ReadVariableOp�
NegQ_Output/MatMulMatMulHidden_2/Relu:activations:0)NegQ_Output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
NegQ_Output/MatMul�
"NegQ_Output/BiasAdd/ReadVariableOpReadVariableOp+negq_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"NegQ_Output/BiasAdd/ReadVariableOp�
NegQ_Output/BiasAddBiasAddNegQ_Output/MatMul:product:0*NegQ_Output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
NegQ_Output/BiasAdd�
!PosQ_Output/MatMul/ReadVariableOpReadVariableOp*posq_output_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02#
!PosQ_Output/MatMul/ReadVariableOp�
PosQ_Output/MatMulMatMulHidden_2/Relu:activations:0)PosQ_Output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
PosQ_Output/MatMul�
"PosQ_Output/BiasAdd/ReadVariableOpReadVariableOp+posq_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"PosQ_Output/BiasAdd/ReadVariableOp�
PosQ_Output/BiasAddBiasAddPosQ_Output/MatMul:product:0*PosQ_Output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
PosQ_Output/BiasAddp
IdentityIdentityPosQ_Output/BiasAdd:output:0*
T0*'
_output_shapes
:���������2

Identityt

Identity_1IdentityNegQ_Output/BiasAdd:output:0*
T0*'
_output_shapes
:���������2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:���������:::::::::O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
J__inference_NegQ_Output_layer_call_and_return_conditional_losses_331486713

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAddd
IdentityIdentityBiasAdd:output:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������:::P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
�
�
H__inference_LogDQNnet_layer_call_and_return_conditional_losses_331486782	
input
hidden_1_331486760
hidden_1_331486762
hidden_2_331486765
hidden_2_331486767
negq_output_331486770
negq_output_331486772
posq_output_331486775
posq_output_331486777
identity

identity_1�� Hidden_1/StatefulPartitionedCall� Hidden_2/StatefulPartitionedCall�#NegQ_Output/StatefulPartitionedCall�#PosQ_Output/StatefulPartitionedCall�
 Hidden_1/StatefulPartitionedCallStatefulPartitionedCallinputhidden_1_331486760hidden_1_331486762*
Tin
2*
Tout
2*(
_output_shapes
:����������*$
_read_only_resource_inputs
*/
config_proto

CPU

GPU2 *0J 8*P
fKRI
G__inference_Hidden_1_layer_call_and_return_conditional_losses_3314866602"
 Hidden_1/StatefulPartitionedCall�
 Hidden_2/StatefulPartitionedCallStatefulPartitionedCall)Hidden_1/StatefulPartitionedCall:output:0hidden_2_331486765hidden_2_331486767*
Tin
2*
Tout
2*(
_output_shapes
:����������*$
_read_only_resource_inputs
*/
config_proto

CPU

GPU2 *0J 8*P
fKRI
G__inference_Hidden_2_layer_call_and_return_conditional_losses_3314866872"
 Hidden_2/StatefulPartitionedCall�
#NegQ_Output/StatefulPartitionedCallStatefulPartitionedCall)Hidden_2/StatefulPartitionedCall:output:0negq_output_331486770negq_output_331486772*
Tin
2*
Tout
2*'
_output_shapes
:���������*$
_read_only_resource_inputs
*/
config_proto

CPU

GPU2 *0J 8*S
fNRL
J__inference_NegQ_Output_layer_call_and_return_conditional_losses_3314867132%
#NegQ_Output/StatefulPartitionedCall�
#PosQ_Output/StatefulPartitionedCallStatefulPartitionedCall)Hidden_2/StatefulPartitionedCall:output:0posq_output_331486775posq_output_331486777*
Tin
2*
Tout
2*'
_output_shapes
:���������*$
_read_only_resource_inputs
*/
config_proto

CPU

GPU2 *0J 8*S
fNRL
J__inference_PosQ_Output_layer_call_and_return_conditional_losses_3314867392%
#PosQ_Output/StatefulPartitionedCall�
IdentityIdentity,PosQ_Output/StatefulPartitionedCall:output:0!^Hidden_1/StatefulPartitionedCall!^Hidden_2/StatefulPartitionedCall$^NegQ_Output/StatefulPartitionedCall$^PosQ_Output/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity�

Identity_1Identity,NegQ_Output/StatefulPartitionedCall:output:0!^Hidden_1/StatefulPartitionedCall!^Hidden_2/StatefulPartitionedCall$^NegQ_Output/StatefulPartitionedCall$^PosQ_Output/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:���������::::::::2D
 Hidden_1/StatefulPartitionedCall Hidden_1/StatefulPartitionedCall2D
 Hidden_2/StatefulPartitionedCall Hidden_2/StatefulPartitionedCall2J
#NegQ_Output/StatefulPartitionedCall#NegQ_Output/StatefulPartitionedCall2J
#PosQ_Output/StatefulPartitionedCall#PosQ_Output/StatefulPartitionedCall:N J
'
_output_shapes
:���������

_user_specified_nameInput:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
-__inference_LogDQNnet_layer_call_fn_331487012

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*:
_output_shapes(
&:���������:���������**
_read_only_resource_inputs

*/
config_proto

CPU

GPU2 *0J 8*Q
fLRJ
H__inference_LogDQNnet_layer_call_and_return_conditional_losses_3314868582
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:���������::::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
/__inference_PosQ_Output_layer_call_fn_331487071

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*'
_output_shapes
:���������*$
_read_only_resource_inputs
*/
config_proto

CPU

GPU2 *0J 8*S
fNRL
J__inference_PosQ_Output_layer_call_and_return_conditional_losses_3314867392
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
�
�
H__inference_LogDQNnet_layer_call_and_return_conditional_losses_331486810

inputs
hidden_1_331486788
hidden_1_331486790
hidden_2_331486793
hidden_2_331486795
negq_output_331486798
negq_output_331486800
posq_output_331486803
posq_output_331486805
identity

identity_1�� Hidden_1/StatefulPartitionedCall� Hidden_2/StatefulPartitionedCall�#NegQ_Output/StatefulPartitionedCall�#PosQ_Output/StatefulPartitionedCall�
 Hidden_1/StatefulPartitionedCallStatefulPartitionedCallinputshidden_1_331486788hidden_1_331486790*
Tin
2*
Tout
2*(
_output_shapes
:����������*$
_read_only_resource_inputs
*/
config_proto

CPU

GPU2 *0J 8*P
fKRI
G__inference_Hidden_1_layer_call_and_return_conditional_losses_3314866602"
 Hidden_1/StatefulPartitionedCall�
 Hidden_2/StatefulPartitionedCallStatefulPartitionedCall)Hidden_1/StatefulPartitionedCall:output:0hidden_2_331486793hidden_2_331486795*
Tin
2*
Tout
2*(
_output_shapes
:����������*$
_read_only_resource_inputs
*/
config_proto

CPU

GPU2 *0J 8*P
fKRI
G__inference_Hidden_2_layer_call_and_return_conditional_losses_3314866872"
 Hidden_2/StatefulPartitionedCall�
#NegQ_Output/StatefulPartitionedCallStatefulPartitionedCall)Hidden_2/StatefulPartitionedCall:output:0negq_output_331486798negq_output_331486800*
Tin
2*
Tout
2*'
_output_shapes
:���������*$
_read_only_resource_inputs
*/
config_proto

CPU

GPU2 *0J 8*S
fNRL
J__inference_NegQ_Output_layer_call_and_return_conditional_losses_3314867132%
#NegQ_Output/StatefulPartitionedCall�
#PosQ_Output/StatefulPartitionedCallStatefulPartitionedCall)Hidden_2/StatefulPartitionedCall:output:0posq_output_331486803posq_output_331486805*
Tin
2*
Tout
2*'
_output_shapes
:���������*$
_read_only_resource_inputs
*/
config_proto

CPU

GPU2 *0J 8*S
fNRL
J__inference_PosQ_Output_layer_call_and_return_conditional_losses_3314867392%
#PosQ_Output/StatefulPartitionedCall�
IdentityIdentity,PosQ_Output/StatefulPartitionedCall:output:0!^Hidden_1/StatefulPartitionedCall!^Hidden_2/StatefulPartitionedCall$^NegQ_Output/StatefulPartitionedCall$^PosQ_Output/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity�

Identity_1Identity,NegQ_Output/StatefulPartitionedCall:output:0!^Hidden_1/StatefulPartitionedCall!^Hidden_2/StatefulPartitionedCall$^NegQ_Output/StatefulPartitionedCall$^PosQ_Output/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:���������::::::::2D
 Hidden_1/StatefulPartitionedCall Hidden_1/StatefulPartitionedCall2D
 Hidden_2/StatefulPartitionedCall Hidden_2/StatefulPartitionedCall2J
#NegQ_Output/StatefulPartitionedCall#NegQ_Output/StatefulPartitionedCall2J
#PosQ_Output/StatefulPartitionedCall#PosQ_Output/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
,__inference_Hidden_2_layer_call_fn_331487052

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*(
_output_shapes
:����������*$
_read_only_resource_inputs
*/
config_proto

CPU

GPU2 *0J 8*P
fKRI
G__inference_Hidden_2_layer_call_and_return_conditional_losses_3314866872
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
�
�
J__inference_PosQ_Output_layer_call_and_return_conditional_losses_331486739

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAddd
IdentityIdentityBiasAdd:output:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������:::P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
�
�
-__inference_LogDQNnet_layer_call_fn_331486831	
input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*:
_output_shapes(
&:���������:���������**
_read_only_resource_inputs

*/
config_proto

CPU

GPU2 *0J 8*Q
fLRJ
H__inference_LogDQNnet_layer_call_and_return_conditional_losses_3314868102
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:���������::::::::22
StatefulPartitionedCallStatefulPartitionedCall:N J
'
_output_shapes
:���������

_user_specified_nameInput:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
/__inference_NegQ_Output_layer_call_fn_331487090

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*'
_output_shapes
:���������*$
_read_only_resource_inputs
*/
config_proto

CPU

GPU2 *0J 8*S
fNRL
J__inference_NegQ_Output_layer_call_and_return_conditional_losses_3314867132
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
�
�
G__inference_Hidden_1_layer_call_and_return_conditional_losses_331486660

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������:::O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
�
�
H__inference_LogDQNnet_layer_call_and_return_conditional_losses_331486858

inputs
hidden_1_331486836
hidden_1_331486838
hidden_2_331486841
hidden_2_331486843
negq_output_331486846
negq_output_331486848
posq_output_331486851
posq_output_331486853
identity

identity_1�� Hidden_1/StatefulPartitionedCall� Hidden_2/StatefulPartitionedCall�#NegQ_Output/StatefulPartitionedCall�#PosQ_Output/StatefulPartitionedCall�
 Hidden_1/StatefulPartitionedCallStatefulPartitionedCallinputshidden_1_331486836hidden_1_331486838*
Tin
2*
Tout
2*(
_output_shapes
:����������*$
_read_only_resource_inputs
*/
config_proto

CPU

GPU2 *0J 8*P
fKRI
G__inference_Hidden_1_layer_call_and_return_conditional_losses_3314866602"
 Hidden_1/StatefulPartitionedCall�
 Hidden_2/StatefulPartitionedCallStatefulPartitionedCall)Hidden_1/StatefulPartitionedCall:output:0hidden_2_331486841hidden_2_331486843*
Tin
2*
Tout
2*(
_output_shapes
:����������*$
_read_only_resource_inputs
*/
config_proto

CPU

GPU2 *0J 8*P
fKRI
G__inference_Hidden_2_layer_call_and_return_conditional_losses_3314866872"
 Hidden_2/StatefulPartitionedCall�
#NegQ_Output/StatefulPartitionedCallStatefulPartitionedCall)Hidden_2/StatefulPartitionedCall:output:0negq_output_331486846negq_output_331486848*
Tin
2*
Tout
2*'
_output_shapes
:���������*$
_read_only_resource_inputs
*/
config_proto

CPU

GPU2 *0J 8*S
fNRL
J__inference_NegQ_Output_layer_call_and_return_conditional_losses_3314867132%
#NegQ_Output/StatefulPartitionedCall�
#PosQ_Output/StatefulPartitionedCallStatefulPartitionedCall)Hidden_2/StatefulPartitionedCall:output:0posq_output_331486851posq_output_331486853*
Tin
2*
Tout
2*'
_output_shapes
:���������*$
_read_only_resource_inputs
*/
config_proto

CPU

GPU2 *0J 8*S
fNRL
J__inference_PosQ_Output_layer_call_and_return_conditional_losses_3314867392%
#PosQ_Output/StatefulPartitionedCall�
IdentityIdentity,PosQ_Output/StatefulPartitionedCall:output:0!^Hidden_1/StatefulPartitionedCall!^Hidden_2/StatefulPartitionedCall$^NegQ_Output/StatefulPartitionedCall$^PosQ_Output/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity�

Identity_1Identity,NegQ_Output/StatefulPartitionedCall:output:0!^Hidden_1/StatefulPartitionedCall!^Hidden_2/StatefulPartitionedCall$^NegQ_Output/StatefulPartitionedCall$^PosQ_Output/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:���������::::::::2D
 Hidden_1/StatefulPartitionedCall Hidden_1/StatefulPartitionedCall2D
 Hidden_2/StatefulPartitionedCall Hidden_2/StatefulPartitionedCall2J
#NegQ_Output/StatefulPartitionedCall#NegQ_Output/StatefulPartitionedCall2J
#PosQ_Output/StatefulPartitionedCall#PosQ_Output/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
-__inference_LogDQNnet_layer_call_fn_331486989

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*:
_output_shapes(
&:���������:���������**
_read_only_resource_inputs

*/
config_proto

CPU

GPU2 *0J 8*Q
fLRJ
H__inference_LogDQNnet_layer_call_and_return_conditional_losses_3314868102
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:���������::::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: "�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
7
Input.
serving_default_Input:0���������?
NegQ_Output0
StatefulPartitionedCall:0���������?
PosQ_Output0
StatefulPartitionedCall:1���������tensorflow/serving/predict:�
�)
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
	variables
regularization_losses
trainable_variables
		keras_api


signatures
*<&call_and_return_all_conditional_losses
=_default_save_signature
>__call__"�'
_tf_keras_model�&{"class_name": "Model", "name": "LogDQNnet", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "config": {"name": "LogDQNnet", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 23]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "Input"}, "name": "Input", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "Hidden_1", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Hidden_1", "inbound_nodes": [[["Input", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "Hidden_2", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Hidden_2", "inbound_nodes": [[["Hidden_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "PosQ_Output", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "PosQ_Output", "inbound_nodes": [[["Hidden_2", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "NegQ_Output", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "Zeros", "config": {}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "NegQ_Output", "inbound_nodes": [[["Hidden_2", 0, 0, {}]]]}], "input_layers": [["Input", 0, 0]], "output_layers": [["PosQ_Output", 0, 0], ["NegQ_Output", 0, 0]]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 23]}, "is_graph_network": true, "keras_version": "2.3.0-tf", "backend": "tensorflow", "model_config": {"class_name": "Model", "config": {"name": "LogDQNnet", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 23]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "Input"}, "name": "Input", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "Hidden_1", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Hidden_1", "inbound_nodes": [[["Input", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "Hidden_2", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Hidden_2", "inbound_nodes": [[["Hidden_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "PosQ_Output", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "PosQ_Output", "inbound_nodes": [[["Hidden_2", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "NegQ_Output", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "Zeros", "config": {}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "NegQ_Output", "inbound_nodes": [[["Hidden_2", 0, 0, {}]]]}], "input_layers": [["Input", 0, 0]], "output_layers": [["PosQ_Output", 0, 0], ["NegQ_Output", 0, 0]]}}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "Input", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 23]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 23]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "Input"}}
�

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*?&call_and_return_all_conditional_losses
@__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "Hidden_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"name": "Hidden_1", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 23}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 23]}}
�

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*A&call_and_return_all_conditional_losses
B__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "Hidden_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"name": "Hidden_2", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 200}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}}
�

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*C&call_and_return_all_conditional_losses
D__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "PosQ_Output", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"name": "PosQ_Output", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 200}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}}
�

kernel
bias
	variables
 regularization_losses
!trainable_variables
"	keras_api
*E&call_and_return_all_conditional_losses
F__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "NegQ_Output", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"name": "NegQ_Output", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "Zeros", "config": {}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 200}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}}
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
�
	variables
#non_trainable_variables
$layer_metrics
%metrics
regularization_losses
trainable_variables
&layer_regularization_losses

'layers
>__call__
=_default_save_signature
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
,
Gserving_default"
signature_map
": 	�2Hidden_1/kernel
:�2Hidden_1/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
	variables
(non_trainable_variables
)layer_metrics

*layers
regularization_losses
trainable_variables
+layer_regularization_losses
,metrics
@__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
#:!
��2Hidden_2/kernel
:�2Hidden_2/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
	variables
-non_trainable_variables
.layer_metrics

/layers
regularization_losses
trainable_variables
0layer_regularization_losses
1metrics
B__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
%:#	�2PosQ_Output/kernel
:2PosQ_Output/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
	variables
2non_trainable_variables
3layer_metrics

4layers
regularization_losses
trainable_variables
5layer_regularization_losses
6metrics
D__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses"
_generic_user_object
%:#	�2NegQ_Output/kernel
:2NegQ_Output/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
	variables
7non_trainable_variables
8layer_metrics

9layers
 regularization_losses
!trainable_variables
:layer_regularization_losses
;metrics
F__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
C
0
1
2
3
4"
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
�2�
H__inference_LogDQNnet_layer_call_and_return_conditional_losses_331486757
H__inference_LogDQNnet_layer_call_and_return_conditional_losses_331486935
H__inference_LogDQNnet_layer_call_and_return_conditional_losses_331486966
H__inference_LogDQNnet_layer_call_and_return_conditional_losses_331486782�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
$__inference__wrapped_model_331486645�
���
FullArgSpec
args� 
varargsjargs
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *$�!
�
Input���������
�2�
-__inference_LogDQNnet_layer_call_fn_331486989
-__inference_LogDQNnet_layer_call_fn_331486879
-__inference_LogDQNnet_layer_call_fn_331487012
-__inference_LogDQNnet_layer_call_fn_331486831�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
G__inference_Hidden_1_layer_call_and_return_conditional_losses_331487023�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
,__inference_Hidden_1_layer_call_fn_331487032�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
G__inference_Hidden_2_layer_call_and_return_conditional_losses_331487043�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
,__inference_Hidden_2_layer_call_fn_331487052�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
J__inference_PosQ_Output_layer_call_and_return_conditional_losses_331487062�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
/__inference_PosQ_Output_layer_call_fn_331487071�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
J__inference_NegQ_Output_layer_call_and_return_conditional_losses_331487081�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
/__inference_NegQ_Output_layer_call_fn_331487090�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
4B2
'__inference_signature_wrapper_331486904Input�
G__inference_Hidden_1_layer_call_and_return_conditional_losses_331487023]/�,
%�"
 �
inputs���������
� "&�#
�
0����������
� �
,__inference_Hidden_1_layer_call_fn_331487032P/�,
%�"
 �
inputs���������
� "������������
G__inference_Hidden_2_layer_call_and_return_conditional_losses_331487043^0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� �
,__inference_Hidden_2_layer_call_fn_331487052Q0�-
&�#
!�
inputs����������
� "������������
H__inference_LogDQNnet_layer_call_and_return_conditional_losses_331486757�6�3
,�)
�
Input���������
p

 
� "K�H
A�>
�
0/0���������
�
0/1���������
� �
H__inference_LogDQNnet_layer_call_and_return_conditional_losses_331486782�6�3
,�)
�
Input���������
p 

 
� "K�H
A�>
�
0/0���������
�
0/1���������
� �
H__inference_LogDQNnet_layer_call_and_return_conditional_losses_331486935�7�4
-�*
 �
inputs���������
p

 
� "K�H
A�>
�
0/0���������
�
0/1���������
� �
H__inference_LogDQNnet_layer_call_and_return_conditional_losses_331486966�7�4
-�*
 �
inputs���������
p 

 
� "K�H
A�>
�
0/0���������
�
0/1���������
� �
-__inference_LogDQNnet_layer_call_fn_331486831�6�3
,�)
�
Input���������
p

 
� "=�:
�
0���������
�
1����������
-__inference_LogDQNnet_layer_call_fn_331486879�6�3
,�)
�
Input���������
p 

 
� "=�:
�
0���������
�
1����������
-__inference_LogDQNnet_layer_call_fn_331486989�7�4
-�*
 �
inputs���������
p

 
� "=�:
�
0���������
�
1����������
-__inference_LogDQNnet_layer_call_fn_331487012�7�4
-�*
 �
inputs���������
p 

 
� "=�:
�
0���������
�
1����������
J__inference_NegQ_Output_layer_call_and_return_conditional_losses_331487081]0�-
&�#
!�
inputs����������
� "%�"
�
0���������
� �
/__inference_NegQ_Output_layer_call_fn_331487090P0�-
&�#
!�
inputs����������
� "�����������
J__inference_PosQ_Output_layer_call_and_return_conditional_losses_331487062]0�-
&�#
!�
inputs����������
� "%�"
�
0���������
� �
/__inference_PosQ_Output_layer_call_fn_331487071P0�-
&�#
!�
inputs����������
� "�����������
$__inference__wrapped_model_331486645�.�+
$�!
�
Input���������
� "o�l
4
NegQ_Output%�"
NegQ_Output���������
4
PosQ_Output%�"
PosQ_Output����������
'__inference_signature_wrapper_331486904�7�4
� 
-�*
(
Input�
Input���������"o�l
4
NegQ_Output%�"
NegQ_Output���������
4
PosQ_Output%�"
PosQ_Output���������