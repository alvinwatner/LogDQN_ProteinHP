ец
¶э
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
dtypetypeИ
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
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshapeИ"serve*2.2.02v2.2.0-0-g2b96f3662b8гч
{
Hidden_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	»* 
shared_nameHidden_1/kernel
t
#Hidden_1/kernel/Read/ReadVariableOpReadVariableOpHidden_1/kernel*
_output_shapes
:	»*
dtype0
s
Hidden_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:»*
shared_nameHidden_1/bias
l
!Hidden_1/bias/Read/ReadVariableOpReadVariableOpHidden_1/bias*
_output_shapes	
:»*
dtype0
|
Hidden_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
»»* 
shared_nameHidden_2/kernel
u
#Hidden_2/kernel/Read/ReadVariableOpReadVariableOpHidden_2/kernel* 
_output_shapes
:
»»*
dtype0
s
Hidden_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:»*
shared_nameHidden_2/bias
l
!Hidden_2/bias/Read/ReadVariableOpReadVariableOpHidden_2/bias*
_output_shapes	
:»*
dtype0
{
q_values/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	»* 
shared_nameq_values/kernel
t
#q_values/kernel/Read/ReadVariableOpReadVariableOpq_values/kernel*
_output_shapes
:	»*
dtype0
r
q_values/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameq_values/bias
k
!q_values/bias/Read/ReadVariableOpReadVariableOpq_values/bias*
_output_shapes
:*
dtype0

NoOpNoOp
и
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*£
valueЩBЦ BП
д
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
regularization_losses
	variables
trainable_variables
	keras_api
	
signatures
 
h


kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
 
*

0
1
2
3
4
5
*

0
1
2
3
4
5
≠
metrics
non_trainable_variables
regularization_losses
layer_regularization_losses
	variables

layers
trainable_variables
 layer_metrics
 
[Y
VARIABLE_VALUEHidden_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEHidden_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE


0
1
 


0
1
≠
!metrics
"non_trainable_variables
#layer_regularization_losses
	variables
regularization_losses

$layers
trainable_variables
%layer_metrics
[Y
VARIABLE_VALUEHidden_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEHidden_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
≠
&metrics
'non_trainable_variables
(layer_regularization_losses
	variables
regularization_losses

)layers
trainable_variables
*layer_metrics
[Y
VARIABLE_VALUEq_values/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEq_values/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
≠
+metrics
,non_trainable_variables
-layer_regularization_losses
	variables
regularization_losses

.layers
trainable_variables
/layer_metrics
 
 
 

0
1
2
3
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
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
Б
StatefulPartitionedCallStatefulPartitionedCallserving_default_InputHidden_1/kernelHidden_1/biasHidden_2/kernelHidden_2/biasq_values/kernelq_values/bias*
Tin
	2*
Tout
2*'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*/
config_proto

GPU

CPU2 *0J 8*/
f*R(
&__inference_signature_wrapper_68368928
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ё
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#Hidden_1/kernel/Read/ReadVariableOp!Hidden_1/bias/Read/ReadVariableOp#Hidden_2/kernel/Read/ReadVariableOp!Hidden_2/bias/Read/ReadVariableOp#q_values/kernel/Read/ReadVariableOp!q_values/bias/Read/ReadVariableOpConst*
Tin

2*
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 */
config_proto

GPU

CPU2 *0J 8**
f%R#
!__inference__traced_save_68369114
б
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameHidden_1/kernelHidden_1/biasHidden_2/kernelHidden_2/biasq_values/kernelq_values/bias*
Tin
	2*
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 */
config_proto

GPU

CPU2 *0J 8*-
f(R&
$__inference__traced_restore_68369144…–
љ
’
D__inference_DQNnet_layer_call_and_return_conditional_losses_68368817	
input
hidden_1_68368758
hidden_1_68368760
hidden_2_68368785
hidden_2_68368787
q_values_68368811
q_values_68368813
identityИҐ Hidden_1/StatefulPartitionedCallҐ Hidden_2/StatefulPartitionedCallҐ q_values/StatefulPartitionedCallэ
 Hidden_1/StatefulPartitionedCallStatefulPartitionedCallinputhidden_1_68368758hidden_1_68368760*
Tin
2*
Tout
2*(
_output_shapes
:€€€€€€€€€»*$
_read_only_resource_inputs
*/
config_proto

GPU

CPU2 *0J 8*O
fJRH
F__inference_Hidden_1_layer_call_and_return_conditional_losses_683687472"
 Hidden_1/StatefulPartitionedCall°
 Hidden_2/StatefulPartitionedCallStatefulPartitionedCall)Hidden_1/StatefulPartitionedCall:output:0hidden_2_68368785hidden_2_68368787*
Tin
2*
Tout
2*(
_output_shapes
:€€€€€€€€€»*$
_read_only_resource_inputs
*/
config_proto

GPU

CPU2 *0J 8*O
fJRH
F__inference_Hidden_2_layer_call_and_return_conditional_losses_683687742"
 Hidden_2/StatefulPartitionedCall†
 q_values/StatefulPartitionedCallStatefulPartitionedCall)Hidden_2/StatefulPartitionedCall:output:0q_values_68368811q_values_68368813*
Tin
2*
Tout
2*'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*/
config_proto

GPU

CPU2 *0J 8*O
fJRH
F__inference_q_values_layer_call_and_return_conditional_losses_683688002"
 q_values/StatefulPartitionedCallж
IdentityIdentity)q_values/StatefulPartitionedCall:output:0!^Hidden_1/StatefulPartitionedCall!^Hidden_2/StatefulPartitionedCall!^q_values/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:€€€€€€€€€::::::2D
 Hidden_1/StatefulPartitionedCall Hidden_1/StatefulPartitionedCall2D
 Hidden_2/StatefulPartitionedCall Hidden_2/StatefulPartitionedCall2D
 q_values/StatefulPartitionedCall q_values/StatefulPartitionedCall:N J
'
_output_shapes
:€€€€€€€€€

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
: 
р
Ѓ
F__inference_Hidden_2_layer_call_and_return_conditional_losses_68368774

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
»»*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:»*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€»2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€»2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€»:::P L
(
_output_shapes
:€€€€€€€€€»
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
м
ь
#__inference__wrapped_model_68368732	
input2
.dqnnet_hidden_1_matmul_readvariableop_resource3
/dqnnet_hidden_1_biasadd_readvariableop_resource2
.dqnnet_hidden_2_matmul_readvariableop_resource3
/dqnnet_hidden_2_biasadd_readvariableop_resource2
.dqnnet_q_values_matmul_readvariableop_resource3
/dqnnet_q_values_biasadd_readvariableop_resource
identityИЊ
%DQNnet/Hidden_1/MatMul/ReadVariableOpReadVariableOp.dqnnet_hidden_1_matmul_readvariableop_resource*
_output_shapes
:	»*
dtype02'
%DQNnet/Hidden_1/MatMul/ReadVariableOp£
DQNnet/Hidden_1/MatMulMatMulinput-DQNnet/Hidden_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
DQNnet/Hidden_1/MatMulљ
&DQNnet/Hidden_1/BiasAdd/ReadVariableOpReadVariableOp/dqnnet_hidden_1_biasadd_readvariableop_resource*
_output_shapes	
:»*
dtype02(
&DQNnet/Hidden_1/BiasAdd/ReadVariableOp¬
DQNnet/Hidden_1/BiasAddBiasAdd DQNnet/Hidden_1/MatMul:product:0.DQNnet/Hidden_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
DQNnet/Hidden_1/BiasAddЙ
DQNnet/Hidden_1/ReluRelu DQNnet/Hidden_1/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€»2
DQNnet/Hidden_1/Reluњ
%DQNnet/Hidden_2/MatMul/ReadVariableOpReadVariableOp.dqnnet_hidden_2_matmul_readvariableop_resource* 
_output_shapes
:
»»*
dtype02'
%DQNnet/Hidden_2/MatMul/ReadVariableOpј
DQNnet/Hidden_2/MatMulMatMul"DQNnet/Hidden_1/Relu:activations:0-DQNnet/Hidden_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
DQNnet/Hidden_2/MatMulљ
&DQNnet/Hidden_2/BiasAdd/ReadVariableOpReadVariableOp/dqnnet_hidden_2_biasadd_readvariableop_resource*
_output_shapes	
:»*
dtype02(
&DQNnet/Hidden_2/BiasAdd/ReadVariableOp¬
DQNnet/Hidden_2/BiasAddBiasAdd DQNnet/Hidden_2/MatMul:product:0.DQNnet/Hidden_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
DQNnet/Hidden_2/BiasAddЙ
DQNnet/Hidden_2/ReluRelu DQNnet/Hidden_2/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€»2
DQNnet/Hidden_2/ReluЊ
%DQNnet/q_values/MatMul/ReadVariableOpReadVariableOp.dqnnet_q_values_matmul_readvariableop_resource*
_output_shapes
:	»*
dtype02'
%DQNnet/q_values/MatMul/ReadVariableOpњ
DQNnet/q_values/MatMulMatMul"DQNnet/Hidden_2/Relu:activations:0-DQNnet/q_values/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
DQNnet/q_values/MatMulЉ
&DQNnet/q_values/BiasAdd/ReadVariableOpReadVariableOp/dqnnet_q_values_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02(
&DQNnet/q_values/BiasAdd/ReadVariableOpЅ
DQNnet/q_values/BiasAddBiasAdd DQNnet/q_values/MatMul:product:0.DQNnet/q_values/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
DQNnet/q_values/BiasAddt
IdentityIdentity DQNnet/q_values/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:€€€€€€€€€:::::::N J
'
_output_shapes
:€€€€€€€€€

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
: 
ј
÷
D__inference_DQNnet_layer_call_and_return_conditional_losses_68368858

inputs
hidden_1_68368842
hidden_1_68368844
hidden_2_68368847
hidden_2_68368849
q_values_68368852
q_values_68368854
identityИҐ Hidden_1/StatefulPartitionedCallҐ Hidden_2/StatefulPartitionedCallҐ q_values/StatefulPartitionedCallю
 Hidden_1/StatefulPartitionedCallStatefulPartitionedCallinputshidden_1_68368842hidden_1_68368844*
Tin
2*
Tout
2*(
_output_shapes
:€€€€€€€€€»*$
_read_only_resource_inputs
*/
config_proto

GPU

CPU2 *0J 8*O
fJRH
F__inference_Hidden_1_layer_call_and_return_conditional_losses_683687472"
 Hidden_1/StatefulPartitionedCall°
 Hidden_2/StatefulPartitionedCallStatefulPartitionedCall)Hidden_1/StatefulPartitionedCall:output:0hidden_2_68368847hidden_2_68368849*
Tin
2*
Tout
2*(
_output_shapes
:€€€€€€€€€»*$
_read_only_resource_inputs
*/
config_proto

GPU

CPU2 *0J 8*O
fJRH
F__inference_Hidden_2_layer_call_and_return_conditional_losses_683687742"
 Hidden_2/StatefulPartitionedCall†
 q_values/StatefulPartitionedCallStatefulPartitionedCall)Hidden_2/StatefulPartitionedCall:output:0q_values_68368852q_values_68368854*
Tin
2*
Tout
2*'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*/
config_proto

GPU

CPU2 *0J 8*O
fJRH
F__inference_q_values_layer_call_and_return_conditional_losses_683688002"
 q_values/StatefulPartitionedCallж
IdentityIdentity)q_values/StatefulPartitionedCall:output:0!^Hidden_1/StatefulPartitionedCall!^Hidden_2/StatefulPartitionedCall!^q_values/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:€€€€€€€€€::::::2D
 Hidden_1/StatefulPartitionedCall Hidden_1/StatefulPartitionedCall2D
 Hidden_2/StatefulPartitionedCall Hidden_2/StatefulPartitionedCall2D
 q_values/StatefulPartitionedCall q_values/StatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
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
: 
н
Ѓ
F__inference_Hidden_1_layer_call_and_return_conditional_losses_68368747

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	»*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:»*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€»2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€»2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€:::O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
В
А
+__inference_q_values_layer_call_fn_68369069

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*/
config_proto

GPU

CPU2 *0J 8*O
fJRH
F__inference_q_values_layer_call_and_return_conditional_losses_683688002
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€»::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€»
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
љ
’
D__inference_DQNnet_layer_call_and_return_conditional_losses_68368836	
input
hidden_1_68368820
hidden_1_68368822
hidden_2_68368825
hidden_2_68368827
q_values_68368830
q_values_68368832
identityИҐ Hidden_1/StatefulPartitionedCallҐ Hidden_2/StatefulPartitionedCallҐ q_values/StatefulPartitionedCallэ
 Hidden_1/StatefulPartitionedCallStatefulPartitionedCallinputhidden_1_68368820hidden_1_68368822*
Tin
2*
Tout
2*(
_output_shapes
:€€€€€€€€€»*$
_read_only_resource_inputs
*/
config_proto

GPU

CPU2 *0J 8*O
fJRH
F__inference_Hidden_1_layer_call_and_return_conditional_losses_683687472"
 Hidden_1/StatefulPartitionedCall°
 Hidden_2/StatefulPartitionedCallStatefulPartitionedCall)Hidden_1/StatefulPartitionedCall:output:0hidden_2_68368825hidden_2_68368827*
Tin
2*
Tout
2*(
_output_shapes
:€€€€€€€€€»*$
_read_only_resource_inputs
*/
config_proto

GPU

CPU2 *0J 8*O
fJRH
F__inference_Hidden_2_layer_call_and_return_conditional_losses_683687742"
 Hidden_2/StatefulPartitionedCall†
 q_values/StatefulPartitionedCallStatefulPartitionedCall)Hidden_2/StatefulPartitionedCall:output:0q_values_68368830q_values_68368832*
Tin
2*
Tout
2*'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*/
config_proto

GPU

CPU2 *0J 8*O
fJRH
F__inference_q_values_layer_call_and_return_conditional_losses_683688002"
 q_values/StatefulPartitionedCallж
IdentityIdentity)q_values/StatefulPartitionedCall:output:0!^Hidden_1/StatefulPartitionedCall!^Hidden_2/StatefulPartitionedCall!^q_values/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:€€€€€€€€€::::::2D
 Hidden_1/StatefulPartitionedCall Hidden_1/StatefulPartitionedCall2D
 Hidden_2/StatefulPartitionedCall Hidden_2/StatefulPartitionedCall2D
 q_values/StatefulPartitionedCall q_values/StatefulPartitionedCall:N J
'
_output_shapes
:€€€€€€€€€

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
: 
О
Ѓ
F__inference_q_values_layer_call_and_return_conditional_losses_68369060

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	»*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAddd
IdentityIdentityBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€»:::P L
(
_output_shapes
:€€€€€€€€€»
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
О
Ѓ
F__inference_q_values_layer_call_and_return_conditional_losses_68368800

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	»*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAddd
IdentityIdentityBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€»:::P L
(
_output_shapes
:€€€€€€€€€»
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
с
є
)__inference_DQNnet_layer_call_fn_68368909	
input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИҐStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*/
config_proto

GPU

CPU2 *0J 8*M
fHRF
D__inference_DQNnet_layer_call_and_return_conditional_losses_683688942
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:€€€€€€€€€::::::22
StatefulPartitionedCallStatefulPartitionedCall:N J
'
_output_shapes
:€€€€€€€€€

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
: 
ф
Ї
)__inference_DQNnet_layer_call_fn_68369010

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИҐStatefulPartitionedCallЛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*/
config_proto

GPU

CPU2 *0J 8*M
fHRF
D__inference_DQNnet_layer_call_and_return_conditional_losses_683688942
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:€€€€€€€€€::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
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
: 
Ю#
Ю
!__inference__traced_save_68369114
file_prefix.
*savev2_hidden_1_kernel_read_readvariableop,
(savev2_hidden_1_bias_read_readvariableop.
*savev2_hidden_2_kernel_read_readvariableop,
(savev2_hidden_2_bias_read_readvariableop.
*savev2_q_values_kernel_read_readvariableop,
(savev2_q_values_bias_read_readvariableop
savev2_1_const

identity_1ИҐMergeV2CheckpointsҐSaveV2ҐSaveV2_1П
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
ConstН
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*<
value3B1 B+_temp_7ce7df87128f4772aee155ba5b6cf441/part2	
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
value	B :2

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
ShardedFilenameЌ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*я
value’B“B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE2
SaveV2/tensor_namesФ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B B 2
SaveV2/shape_and_slices≥
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_hidden_1_kernel_read_readvariableop(savev2_hidden_1_bias_read_readvariableop*savev2_hidden_2_kernel_read_readvariableop(savev2_hidden_2_bias_read_readvariableop*savev2_q_values_kernel_read_readvariableop(savev2_q_values_bias_read_readvariableop"/device:CPU:0*
_output_shapes
 *
dtypes

22
SaveV2Г
ShardedFilename_1/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B :2
ShardedFilename_1/shardђ
ShardedFilename_1ShardedFilenameStringJoin:output:0 ShardedFilename_1/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename_1Ґ
SaveV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2_1/tensor_namesО
SaveV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 2
SaveV2_1/shape_and_slicesѕ
SaveV2_1SaveV2ShardedFilename_1:filename:0SaveV2_1/tensor_names:output:0"SaveV2_1/shape_and_slices:output:0savev2_1_const^SaveV2"/device:CPU:0*
_output_shapes
 *
dtypes
22

SaveV2_1г
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0ShardedFilename_1:filename:0^SaveV2	^SaveV2_1"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesђ
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix	^SaveV2_1"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

IdentityБ

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints^SaveV2	^SaveV2_1*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*M
_input_shapes<
:: :	»:»:
»»:»:	»:: 2(
MergeV2CheckpointsMergeV2Checkpoints2
SaveV2SaveV22
SaveV2_1SaveV2_1:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	»:!

_output_shapes	
:»:&"
 
_output_shapes
:
»»:!

_output_shapes	
:»:%!

_output_shapes
:	»: 

_output_shapes
::

_output_shapes
: 
ф
Ї
)__inference_DQNnet_layer_call_fn_68368993

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИҐStatefulPartitionedCallЛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*/
config_proto

GPU

CPU2 *0J 8*M
fHRF
D__inference_DQNnet_layer_call_and_return_conditional_losses_683688582
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:€€€€€€€€€::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
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
: 
Д
А
+__inference_Hidden_2_layer_call_fn_68369050

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallЏ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*(
_output_shapes
:€€€€€€€€€»*$
_read_only_resource_inputs
*/
config_proto

GPU

CPU2 *0J 8*O
fJRH
F__inference_Hidden_2_layer_call_and_return_conditional_losses_683687742
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€»2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€»::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€»
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
с
є
)__inference_DQNnet_layer_call_fn_68368873	
input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИҐStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*/
config_proto

GPU

CPU2 *0J 8*M
fHRF
D__inference_DQNnet_layer_call_and_return_conditional_losses_683688582
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:€€€€€€€€€::::::22
StatefulPartitionedCallStatefulPartitionedCall:N J
'
_output_shapes
:€€€€€€€€€

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
: 
Ќ
ґ
&__inference_signature_wrapper_68368928	
input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИҐStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*/
config_proto

GPU

CPU2 *0J 8*,
f'R%
#__inference__wrapped_model_683687322
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:€€€€€€€€€::::::22
StatefulPartitionedCallStatefulPartitionedCall:N J
'
_output_shapes
:€€€€€€€€€

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
: 
Ф
ф
D__inference_DQNnet_layer_call_and_return_conditional_losses_68368976

inputs+
'hidden_1_matmul_readvariableop_resource,
(hidden_1_biasadd_readvariableop_resource+
'hidden_2_matmul_readvariableop_resource,
(hidden_2_biasadd_readvariableop_resource+
'q_values_matmul_readvariableop_resource,
(q_values_biasadd_readvariableop_resource
identityИ©
Hidden_1/MatMul/ReadVariableOpReadVariableOp'hidden_1_matmul_readvariableop_resource*
_output_shapes
:	»*
dtype02 
Hidden_1/MatMul/ReadVariableOpП
Hidden_1/MatMulMatMulinputs&Hidden_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
Hidden_1/MatMul®
Hidden_1/BiasAdd/ReadVariableOpReadVariableOp(hidden_1_biasadd_readvariableop_resource*
_output_shapes	
:»*
dtype02!
Hidden_1/BiasAdd/ReadVariableOp¶
Hidden_1/BiasAddBiasAddHidden_1/MatMul:product:0'Hidden_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
Hidden_1/BiasAddt
Hidden_1/ReluReluHidden_1/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€»2
Hidden_1/Relu™
Hidden_2/MatMul/ReadVariableOpReadVariableOp'hidden_2_matmul_readvariableop_resource* 
_output_shapes
:
»»*
dtype02 
Hidden_2/MatMul/ReadVariableOp§
Hidden_2/MatMulMatMulHidden_1/Relu:activations:0&Hidden_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
Hidden_2/MatMul®
Hidden_2/BiasAdd/ReadVariableOpReadVariableOp(hidden_2_biasadd_readvariableop_resource*
_output_shapes	
:»*
dtype02!
Hidden_2/BiasAdd/ReadVariableOp¶
Hidden_2/BiasAddBiasAddHidden_2/MatMul:product:0'Hidden_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
Hidden_2/BiasAddt
Hidden_2/ReluReluHidden_2/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€»2
Hidden_2/Relu©
q_values/MatMul/ReadVariableOpReadVariableOp'q_values_matmul_readvariableop_resource*
_output_shapes
:	»*
dtype02 
q_values/MatMul/ReadVariableOp£
q_values/MatMulMatMulHidden_2/Relu:activations:0&q_values/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
q_values/MatMulІ
q_values/BiasAdd/ReadVariableOpReadVariableOp(q_values_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
q_values/BiasAdd/ReadVariableOp•
q_values/BiasAddBiasAddq_values/MatMul:product:0'q_values/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
q_values/BiasAddm
IdentityIdentityq_values/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:€€€€€€€€€:::::::O K
'
_output_shapes
:€€€€€€€€€
 
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
: 
Ф
ф
D__inference_DQNnet_layer_call_and_return_conditional_losses_68368952

inputs+
'hidden_1_matmul_readvariableop_resource,
(hidden_1_biasadd_readvariableop_resource+
'hidden_2_matmul_readvariableop_resource,
(hidden_2_biasadd_readvariableop_resource+
'q_values_matmul_readvariableop_resource,
(q_values_biasadd_readvariableop_resource
identityИ©
Hidden_1/MatMul/ReadVariableOpReadVariableOp'hidden_1_matmul_readvariableop_resource*
_output_shapes
:	»*
dtype02 
Hidden_1/MatMul/ReadVariableOpП
Hidden_1/MatMulMatMulinputs&Hidden_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
Hidden_1/MatMul®
Hidden_1/BiasAdd/ReadVariableOpReadVariableOp(hidden_1_biasadd_readvariableop_resource*
_output_shapes	
:»*
dtype02!
Hidden_1/BiasAdd/ReadVariableOp¶
Hidden_1/BiasAddBiasAddHidden_1/MatMul:product:0'Hidden_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
Hidden_1/BiasAddt
Hidden_1/ReluReluHidden_1/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€»2
Hidden_1/Relu™
Hidden_2/MatMul/ReadVariableOpReadVariableOp'hidden_2_matmul_readvariableop_resource* 
_output_shapes
:
»»*
dtype02 
Hidden_2/MatMul/ReadVariableOp§
Hidden_2/MatMulMatMulHidden_1/Relu:activations:0&Hidden_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
Hidden_2/MatMul®
Hidden_2/BiasAdd/ReadVariableOpReadVariableOp(hidden_2_biasadd_readvariableop_resource*
_output_shapes	
:»*
dtype02!
Hidden_2/BiasAdd/ReadVariableOp¶
Hidden_2/BiasAddBiasAddHidden_2/MatMul:product:0'Hidden_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
Hidden_2/BiasAddt
Hidden_2/ReluReluHidden_2/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€»2
Hidden_2/Relu©
q_values/MatMul/ReadVariableOpReadVariableOp'q_values_matmul_readvariableop_resource*
_output_shapes
:	»*
dtype02 
q_values/MatMul/ReadVariableOp£
q_values/MatMulMatMulHidden_2/Relu:activations:0&q_values/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
q_values/MatMulІ
q_values/BiasAdd/ReadVariableOpReadVariableOp(q_values_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
q_values/BiasAdd/ReadVariableOp•
q_values/BiasAddBiasAddq_values/MatMul:product:0'q_values/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
q_values/BiasAddm
IdentityIdentityq_values/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:€€€€€€€€€:::::::O K
'
_output_shapes
:€€€€€€€€€
 
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
: 
ј
÷
D__inference_DQNnet_layer_call_and_return_conditional_losses_68368894

inputs
hidden_1_68368878
hidden_1_68368880
hidden_2_68368883
hidden_2_68368885
q_values_68368888
q_values_68368890
identityИҐ Hidden_1/StatefulPartitionedCallҐ Hidden_2/StatefulPartitionedCallҐ q_values/StatefulPartitionedCallю
 Hidden_1/StatefulPartitionedCallStatefulPartitionedCallinputshidden_1_68368878hidden_1_68368880*
Tin
2*
Tout
2*(
_output_shapes
:€€€€€€€€€»*$
_read_only_resource_inputs
*/
config_proto

GPU

CPU2 *0J 8*O
fJRH
F__inference_Hidden_1_layer_call_and_return_conditional_losses_683687472"
 Hidden_1/StatefulPartitionedCall°
 Hidden_2/StatefulPartitionedCallStatefulPartitionedCall)Hidden_1/StatefulPartitionedCall:output:0hidden_2_68368883hidden_2_68368885*
Tin
2*
Tout
2*(
_output_shapes
:€€€€€€€€€»*$
_read_only_resource_inputs
*/
config_proto

GPU

CPU2 *0J 8*O
fJRH
F__inference_Hidden_2_layer_call_and_return_conditional_losses_683687742"
 Hidden_2/StatefulPartitionedCall†
 q_values/StatefulPartitionedCallStatefulPartitionedCall)Hidden_2/StatefulPartitionedCall:output:0q_values_68368888q_values_68368890*
Tin
2*
Tout
2*'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*/
config_proto

GPU

CPU2 *0J 8*O
fJRH
F__inference_q_values_layer_call_and_return_conditional_losses_683688002"
 q_values/StatefulPartitionedCallж
IdentityIdentity)q_values/StatefulPartitionedCall:output:0!^Hidden_1/StatefulPartitionedCall!^Hidden_2/StatefulPartitionedCall!^q_values/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:€€€€€€€€€::::::2D
 Hidden_1/StatefulPartitionedCall Hidden_1/StatefulPartitionedCall2D
 Hidden_2/StatefulPartitionedCall Hidden_2/StatefulPartitionedCall2D
 q_values/StatefulPartitionedCall q_values/StatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
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
: 
г"
»
$__inference__traced_restore_68369144
file_prefix$
 assignvariableop_hidden_1_kernel$
 assignvariableop_1_hidden_1_bias&
"assignvariableop_2_hidden_2_kernel$
 assignvariableop_3_hidden_2_bias&
"assignvariableop_4_q_values_kernel$
 assignvariableop_5_q_values_bias

identity_7ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_2ҐAssignVariableOp_3ҐAssignVariableOp_4ҐAssignVariableOp_5Ґ	RestoreV2ҐRestoreV2_1”
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*я
value’B“B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE2
RestoreV2/tensor_namesЪ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B B 2
RestoreV2/shape_and_slices…
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*,
_output_shapes
::::::*
dtypes

22
	RestoreV2X
IdentityIdentityRestoreV2:tensors:0*
T0*
_output_shapes
:2

IdentityР
AssignVariableOpAssignVariableOp assignvariableop_hidden_1_kernelIdentity:output:0*
_output_shapes
 *
dtype02
AssignVariableOp\

Identity_1IdentityRestoreV2:tensors:1*
T0*
_output_shapes
:2

Identity_1Ц
AssignVariableOp_1AssignVariableOp assignvariableop_1_hidden_1_biasIdentity_1:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_1\

Identity_2IdentityRestoreV2:tensors:2*
T0*
_output_shapes
:2

Identity_2Ш
AssignVariableOp_2AssignVariableOp"assignvariableop_2_hidden_2_kernelIdentity_2:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_2\

Identity_3IdentityRestoreV2:tensors:3*
T0*
_output_shapes
:2

Identity_3Ц
AssignVariableOp_3AssignVariableOp assignvariableop_3_hidden_2_biasIdentity_3:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_3\

Identity_4IdentityRestoreV2:tensors:4*
T0*
_output_shapes
:2

Identity_4Ш
AssignVariableOp_4AssignVariableOp"assignvariableop_4_q_values_kernelIdentity_4:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_4\

Identity_5IdentityRestoreV2:tensors:5*
T0*
_output_shapes
:2

Identity_5Ц
AssignVariableOp_5AssignVariableOp assignvariableop_5_q_values_biasIdentity_5:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_5®
RestoreV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2_1/tensor_namesФ
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 2
RestoreV2_1/shape_and_slicesƒ
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
NoOpд

Identity_6Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_6р

Identity_7IdentityIdentity_6:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5
^RestoreV2^RestoreV2_1*
T0*
_output_shapes
: 2

Identity_7"!

identity_7Identity_7:output:0*-
_input_shapes
: ::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52
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
: 
В
А
+__inference_Hidden_1_layer_call_fn_68369030

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallЏ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*(
_output_shapes
:€€€€€€€€€»*$
_read_only_resource_inputs
*/
config_proto

GPU

CPU2 *0J 8*O
fJRH
F__inference_Hidden_1_layer_call_and_return_conditional_losses_683687472
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€»2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
р
Ѓ
F__inference_Hidden_2_layer_call_and_return_conditional_losses_68369041

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
»»*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:»*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€»2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€»2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€»:::P L
(
_output_shapes
:€€€€€€€€€»
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
н
Ѓ
F__inference_Hidden_1_layer_call_and_return_conditional_losses_68369021

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	»*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:»*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€»2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€»2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€:::O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: "ѓL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*І
serving_defaultУ
7
Input.
serving_default_Input:0€€€€€€€€€<
q_values0
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:щw
љ!
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
regularization_losses
	variables
trainable_variables
	keras_api
	
signatures
0__call__
*1&call_and_return_all_conditional_losses
2_default_save_signature"€
_tf_keras_modelе{"class_name": "Model", "name": "DQNnet", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "config": {"name": "DQNnet", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 23]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "Input"}, "name": "Input", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "Hidden_1", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Hidden_1", "inbound_nodes": [[["Input", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "Hidden_2", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Hidden_2", "inbound_nodes": [[["Hidden_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "q_values", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "q_values", "inbound_nodes": [[["Hidden_2", 0, 0, {}]]]}], "input_layers": [["Input", 0, 0]], "output_layers": [["q_values", 0, 0]]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 23]}, "is_graph_network": true, "keras_version": "2.3.0-tf", "backend": "tensorflow", "model_config": {"class_name": "Model", "config": {"name": "DQNnet", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 23]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "Input"}, "name": "Input", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "Hidden_1", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Hidden_1", "inbound_nodes": [[["Input", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "Hidden_2", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Hidden_2", "inbound_nodes": [[["Hidden_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "q_values", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "q_values", "inbound_nodes": [[["Hidden_2", 0, 0, {}]]]}], "input_layers": [["Input", 0, 0]], "output_layers": [["q_values", 0, 0]]}}}
з"д
_tf_keras_input_layerƒ{"class_name": "InputLayer", "name": "Input", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 23]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 23]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "Input"}}
ѕ


kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
3__call__
*4&call_and_return_all_conditional_losses"™
_tf_keras_layerР{"class_name": "Dense", "name": "Hidden_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"name": "Hidden_1", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 23}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 23]}}
—

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
5__call__
*6&call_and_return_all_conditional_losses"ђ
_tf_keras_layerТ{"class_name": "Dense", "name": "Hidden_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"name": "Hidden_2", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 200}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}}
—

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
7__call__
*8&call_and_return_all_conditional_losses"ђ
_tf_keras_layerТ{"class_name": "Dense", "name": "q_values", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"name": "q_values", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 200}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}}
 "
trackable_list_wrapper
J

0
1
2
3
4
5"
trackable_list_wrapper
J

0
1
2
3
4
5"
trackable_list_wrapper
 
metrics
non_trainable_variables
regularization_losses
layer_regularization_losses
	variables

layers
trainable_variables
 layer_metrics
0__call__
2_default_save_signature
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
,
9serving_default"
signature_map
": 	»2Hidden_1/kernel
:»2Hidden_1/bias
.

0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.

0
1"
trackable_list_wrapper
≠
!metrics
"non_trainable_variables
#layer_regularization_losses
	variables
regularization_losses

$layers
trainable_variables
%layer_metrics
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
#:!
»»2Hidden_2/kernel
:»2Hidden_2/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
≠
&metrics
'non_trainable_variables
(layer_regularization_losses
	variables
regularization_losses

)layers
trainable_variables
*layer_metrics
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
": 	»2q_values/kernel
:2q_values/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
≠
+metrics
,non_trainable_variables
-layer_regularization_losses
	variables
regularization_losses

.layers
trainable_variables
/layer_metrics
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
<
0
1
2
3"
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
т2п
)__inference_DQNnet_layer_call_fn_68369010
)__inference_DQNnet_layer_call_fn_68368993
)__inference_DQNnet_layer_call_fn_68368909
)__inference_DQNnet_layer_call_fn_68368873ј
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
ё2џ
D__inference_DQNnet_layer_call_and_return_conditional_losses_68368952
D__inference_DQNnet_layer_call_and_return_conditional_losses_68368817
D__inference_DQNnet_layer_call_and_return_conditional_losses_68368836
D__inference_DQNnet_layer_call_and_return_conditional_losses_68368976ј
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
я2№
#__inference__wrapped_model_68368732і
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
annotations™ *$Ґ!
К
Input€€€€€€€€€
’2“
+__inference_Hidden_1_layer_call_fn_68369030Ґ
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
F__inference_Hidden_1_layer_call_and_return_conditional_losses_68369021Ґ
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
+__inference_Hidden_2_layer_call_fn_68369050Ґ
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
F__inference_Hidden_2_layer_call_and_return_conditional_losses_68369041Ґ
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
+__inference_q_values_layer_call_fn_68369069Ґ
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
F__inference_q_values_layer_call_and_return_conditional_losses_68369060Ґ
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
3B1
&__inference_signature_wrapper_68368928Inputѓ
D__inference_DQNnet_layer_call_and_return_conditional_losses_68368817g
6Ґ3
,Ґ)
К
Input€€€€€€€€€
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ѓ
D__inference_DQNnet_layer_call_and_return_conditional_losses_68368836g
6Ґ3
,Ґ)
К
Input€€€€€€€€€
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ∞
D__inference_DQNnet_layer_call_and_return_conditional_losses_68368952h
7Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ∞
D__inference_DQNnet_layer_call_and_return_conditional_losses_68368976h
7Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ З
)__inference_DQNnet_layer_call_fn_68368873Z
6Ґ3
,Ґ)
К
Input€€€€€€€€€
p

 
™ "К€€€€€€€€€З
)__inference_DQNnet_layer_call_fn_68368909Z
6Ґ3
,Ґ)
К
Input€€€€€€€€€
p 

 
™ "К€€€€€€€€€И
)__inference_DQNnet_layer_call_fn_68368993[
7Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p

 
™ "К€€€€€€€€€И
)__inference_DQNnet_layer_call_fn_68369010[
7Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p 

 
™ "К€€€€€€€€€І
F__inference_Hidden_1_layer_call_and_return_conditional_losses_68369021]
/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "&Ґ#
К
0€€€€€€€€€»
Ъ 
+__inference_Hidden_1_layer_call_fn_68369030P
/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "К€€€€€€€€€»®
F__inference_Hidden_2_layer_call_and_return_conditional_losses_68369041^0Ґ-
&Ґ#
!К
inputs€€€€€€€€€»
™ "&Ґ#
К
0€€€€€€€€€»
Ъ А
+__inference_Hidden_2_layer_call_fn_68369050Q0Ґ-
&Ґ#
!К
inputs€€€€€€€€€»
™ "К€€€€€€€€€»Ф
#__inference__wrapped_model_68368732m
.Ґ+
$Ґ!
К
Input€€€€€€€€€
™ "3™0
.
q_values"К
q_values€€€€€€€€€І
F__inference_q_values_layer_call_and_return_conditional_losses_68369060]0Ґ-
&Ґ#
!К
inputs€€€€€€€€€»
™ "%Ґ"
К
0€€€€€€€€€
Ъ 
+__inference_q_values_layer_call_fn_68369069P0Ґ-
&Ґ#
!К
inputs€€€€€€€€€»
™ "К€€€€€€€€€†
&__inference_signature_wrapper_68368928v
7Ґ4
Ґ 
-™*
(
InputК
Input€€€€€€€€€"3™0
.
q_values"К
q_values€€€€€€€€€