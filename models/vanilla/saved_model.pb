Лј
ѕФ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
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

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

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
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
ReadVariableOp
resource
value"dtype"
dtypetype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
С
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
executor_typestring Ј
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.11.02v2.11.0-rc2-15-g6290819256d8Ц

SGD/cnn/dense_2/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*.
shared_nameSGD/cnn/dense_2/bias/momentum

1SGD/cnn/dense_2/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/cnn/dense_2/bias/momentum*
_output_shapes
:
*
dtype0

SGD/cnn/dense_2/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ш
*0
shared_name!SGD/cnn/dense_2/kernel/momentum

3SGD/cnn/dense_2/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/cnn/dense_2/kernel/momentum*
_output_shapes
:	Ш
*
dtype0

SGD/cnn/dense_1/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ш*.
shared_nameSGD/cnn/dense_1/bias/momentum

1SGD/cnn/dense_1/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/cnn/dense_1/bias/momentum*
_output_shapes	
:Ш*
dtype0

SGD/cnn/dense_1/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ШШ*0
shared_name!SGD/cnn/dense_1/kernel/momentum

3SGD/cnn/dense_1/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/cnn/dense_1/kernel/momentum* 
_output_shapes
:
ШШ*
dtype0

SGD/cnn/dense/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ш*,
shared_nameSGD/cnn/dense/bias/momentum

/SGD/cnn/dense/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/cnn/dense/bias/momentum*
_output_shapes	
:Ш*
dtype0

SGD/cnn/dense/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ш*.
shared_nameSGD/cnn/dense/kernel/momentum

1SGD/cnn/dense/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/cnn/dense/kernel/momentum* 
_output_shapes
:
Ш*
dtype0

SGD/cnn/conv2d_3/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name SGD/cnn/conv2d_3/bias/momentum

2SGD/cnn/conv2d_3/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/cnn/conv2d_3/bias/momentum*
_output_shapes
:@*
dtype0
Є
 SGD/cnn/conv2d_3/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*1
shared_name" SGD/cnn/conv2d_3/kernel/momentum

4SGD/cnn/conv2d_3/kernel/momentum/Read/ReadVariableOpReadVariableOp SGD/cnn/conv2d_3/kernel/momentum*&
_output_shapes
:@@*
dtype0

SGD/cnn/conv2d_2/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name SGD/cnn/conv2d_2/bias/momentum

2SGD/cnn/conv2d_2/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/cnn/conv2d_2/bias/momentum*
_output_shapes
:@*
dtype0
Є
 SGD/cnn/conv2d_2/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*1
shared_name" SGD/cnn/conv2d_2/kernel/momentum

4SGD/cnn/conv2d_2/kernel/momentum/Read/ReadVariableOpReadVariableOp SGD/cnn/conv2d_2/kernel/momentum*&
_output_shapes
: @*
dtype0

SGD/cnn/conv2d_1/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name SGD/cnn/conv2d_1/bias/momentum

2SGD/cnn/conv2d_1/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/cnn/conv2d_1/bias/momentum*
_output_shapes
: *
dtype0
Є
 SGD/cnn/conv2d_1/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *1
shared_name" SGD/cnn/conv2d_1/kernel/momentum

4SGD/cnn/conv2d_1/kernel/momentum/Read/ReadVariableOpReadVariableOp SGD/cnn/conv2d_1/kernel/momentum*&
_output_shapes
:  *
dtype0

SGD/cnn/conv2d/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_nameSGD/cnn/conv2d/bias/momentum

0SGD/cnn/conv2d/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/cnn/conv2d/bias/momentum*
_output_shapes
: *
dtype0
 
SGD/cnn/conv2d/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name SGD/cnn/conv2d/kernel/momentum

2SGD/cnn/conv2d/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/cnn/conv2d/kernel/momentum*&
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
l
SGD/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameSGD/momentum
e
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
_output_shapes
: *
dtype0
v
SGD/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameSGD/learning_rate
o
%SGD/learning_rate/Read/ReadVariableOpReadVariableOpSGD/learning_rate*
_output_shapes
: *
dtype0
f
	SGD/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	SGD/decay
_
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_output_shapes
: *
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
x
cnn/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*!
shared_namecnn/dense_2/bias
q
$cnn/dense_2/bias/Read/ReadVariableOpReadVariableOpcnn/dense_2/bias*
_output_shapes
:
*
dtype0

cnn/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ш
*#
shared_namecnn/dense_2/kernel
z
&cnn/dense_2/kernel/Read/ReadVariableOpReadVariableOpcnn/dense_2/kernel*
_output_shapes
:	Ш
*
dtype0
y
cnn/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ш*!
shared_namecnn/dense_1/bias
r
$cnn/dense_1/bias/Read/ReadVariableOpReadVariableOpcnn/dense_1/bias*
_output_shapes	
:Ш*
dtype0

cnn/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ШШ*#
shared_namecnn/dense_1/kernel
{
&cnn/dense_1/kernel/Read/ReadVariableOpReadVariableOpcnn/dense_1/kernel* 
_output_shapes
:
ШШ*
dtype0
u
cnn/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ш*
shared_namecnn/dense/bias
n
"cnn/dense/bias/Read/ReadVariableOpReadVariableOpcnn/dense/bias*
_output_shapes	
:Ш*
dtype0
~
cnn/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ш*!
shared_namecnn/dense/kernel
w
$cnn/dense/kernel/Read/ReadVariableOpReadVariableOpcnn/dense/kernel* 
_output_shapes
:
Ш*
dtype0
z
cnn/conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_namecnn/conv2d_3/bias
s
%cnn/conv2d_3/bias/Read/ReadVariableOpReadVariableOpcnn/conv2d_3/bias*
_output_shapes
:@*
dtype0

cnn/conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*$
shared_namecnn/conv2d_3/kernel

'cnn/conv2d_3/kernel/Read/ReadVariableOpReadVariableOpcnn/conv2d_3/kernel*&
_output_shapes
:@@*
dtype0
z
cnn/conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_namecnn/conv2d_2/bias
s
%cnn/conv2d_2/bias/Read/ReadVariableOpReadVariableOpcnn/conv2d_2/bias*
_output_shapes
:@*
dtype0

cnn/conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*$
shared_namecnn/conv2d_2/kernel

'cnn/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpcnn/conv2d_2/kernel*&
_output_shapes
: @*
dtype0
z
cnn/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_namecnn/conv2d_1/bias
s
%cnn/conv2d_1/bias/Read/ReadVariableOpReadVariableOpcnn/conv2d_1/bias*
_output_shapes
: *
dtype0

cnn/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *$
shared_namecnn/conv2d_1/kernel

'cnn/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpcnn/conv2d_1/kernel*&
_output_shapes
:  *
dtype0
v
cnn/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_namecnn/conv2d/bias
o
#cnn/conv2d/bias/Read/ReadVariableOpReadVariableOpcnn/conv2d/bias*
_output_shapes
: *
dtype0

cnn/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_namecnn/conv2d/kernel

%cnn/conv2d/kernel/Read/ReadVariableOpReadVariableOpcnn/conv2d/kernel*&
_output_shapes
: *
dtype0

serving_default_input_1Placeholder*/
_output_shapes
:џџџџџџџџџ*
dtype0*$
shape:џџџџџџџџџ
з
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1cnn/conv2d/kernelcnn/conv2d/biascnn/conv2d_1/kernelcnn/conv2d_1/biascnn/conv2d_2/kernelcnn/conv2d_2/biascnn/conv2d_3/kernelcnn/conv2d_3/biascnn/dense/kernelcnn/dense/biascnn/dense_1/kernelcnn/dense_1/biascnn/dense_2/kernelcnn/dense_2/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_95783

NoOpNoOp
№Q
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ЋQ
valueЁQBQ BQ
Ы
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	loss_list
		optimizer
	
conv1
	conv2
maxpool1
	conv3
	conv4
maxpool2
fc1
fc2
fc3
softmax

signatures*
j
0
1
2
3
4
5
6
7
8
9
10
 11
!12
"13*
j
0
1
2
3
4
5
6
7
8
9
10
 11
!12
"13*
* 
А
#non_trainable_variables

$layers
%metrics
&layer_regularization_losses
'layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

(trace_0
)trace_1* 

*trace_0
+trace_1* 
* 
* 
Ј
,iter
	-decay
.learning_rate
/momentummomentumЖmomentumЗmomentumИmomentumЙmomentumКmomentumЛmomentumМmomentumНmomentumОmomentumПmomentumР momentumС!momentumТ"momentumУ*
Ш
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses

kernel
bias
 6_jit_compiled_convolution_op*
Ш
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses

kernel
bias
 =_jit_compiled_convolution_op*

>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses* 
Ш
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses

kernel
bias
 J_jit_compiled_convolution_op*
Ш
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses

kernel
bias
 Q_jit_compiled_convolution_op*

R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses* 
І
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses

kernel
bias*
І
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses

kernel
 bias*
І
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses

!kernel
"bias*

j	keras_api* 

kserving_default* 
QK
VARIABLE_VALUEcnn/conv2d/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEcnn/conv2d/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcnn/conv2d_1/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEcnn/conv2d_1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcnn/conv2d_2/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEcnn/conv2d_2/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcnn/conv2d_3/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEcnn/conv2d_3/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEcnn/dense/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEcnn/dense/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcnn/dense_1/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEcnn/dense_1/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcnn/dense_2/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEcnn/dense_2/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
* 
J

0
1
2
3
4
5
6
7
8
9*

l0
m1*
* 
* 
* 
* 
* 
* 
KE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses*

strace_0* 

ttrace_0* 
* 

0
1*

0
1*
* 

unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses*

ztrace_0* 

{trace_0* 
* 
* 
* 
* 

|non_trainable_variables

}layers
~metrics
layer_regularization_losses
layer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses*

trace_0* 

trace_0* 
* 

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses*

trace_0* 

trace_0* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses*

trace_0* 

trace_0* 

0
 1*

0
 1*
* 

non_trainable_variables
 layers
Ёmetrics
 Ђlayer_regularization_losses
Ѓlayer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses*

Єtrace_0* 

Ѕtrace_0* 

!0
"1*

!0
"1*
* 

Іnon_trainable_variables
Їlayers
Јmetrics
 Љlayer_regularization_losses
Њlayer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses*

Ћtrace_0* 

Ќtrace_0* 
* 
* 
<
­	variables
Ў	keras_api

Џtotal

Аcount*
M
Б	variables
В	keras_api

Гtotal

Дcount
Е
_fn_kwargs*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Џ0
А1*

­	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Г0
Д1*

Б	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
{
VARIABLE_VALUESGD/cnn/conv2d/kernel/momentumIvariables/0/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUESGD/cnn/conv2d/bias/momentumIvariables/1/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUE SGD/cnn/conv2d_1/kernel/momentumIvariables/2/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUESGD/cnn/conv2d_1/bias/momentumIvariables/3/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUE SGD/cnn/conv2d_2/kernel/momentumIvariables/4/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUESGD/cnn/conv2d_2/bias/momentumIvariables/5/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUE SGD/cnn/conv2d_3/kernel/momentumIvariables/6/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUESGD/cnn/conv2d_3/bias/momentumIvariables/7/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUESGD/cnn/dense/kernel/momentumIvariables/8/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUESGD/cnn/dense/bias/momentumIvariables/9/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUESGD/cnn/dense_1/kernel/momentumJvariables/10/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUESGD/cnn/dense_1/bias/momentumJvariables/11/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUESGD/cnn/dense_2/kernel/momentumJvariables/12/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUESGD/cnn/dense_2/bias/momentumJvariables/13/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ў
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%cnn/conv2d/kernel/Read/ReadVariableOp#cnn/conv2d/bias/Read/ReadVariableOp'cnn/conv2d_1/kernel/Read/ReadVariableOp%cnn/conv2d_1/bias/Read/ReadVariableOp'cnn/conv2d_2/kernel/Read/ReadVariableOp%cnn/conv2d_2/bias/Read/ReadVariableOp'cnn/conv2d_3/kernel/Read/ReadVariableOp%cnn/conv2d_3/bias/Read/ReadVariableOp$cnn/dense/kernel/Read/ReadVariableOp"cnn/dense/bias/Read/ReadVariableOp&cnn/dense_1/kernel/Read/ReadVariableOp$cnn/dense_1/bias/Read/ReadVariableOp&cnn/dense_2/kernel/Read/ReadVariableOp$cnn/dense_2/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp2SGD/cnn/conv2d/kernel/momentum/Read/ReadVariableOp0SGD/cnn/conv2d/bias/momentum/Read/ReadVariableOp4SGD/cnn/conv2d_1/kernel/momentum/Read/ReadVariableOp2SGD/cnn/conv2d_1/bias/momentum/Read/ReadVariableOp4SGD/cnn/conv2d_2/kernel/momentum/Read/ReadVariableOp2SGD/cnn/conv2d_2/bias/momentum/Read/ReadVariableOp4SGD/cnn/conv2d_3/kernel/momentum/Read/ReadVariableOp2SGD/cnn/conv2d_3/bias/momentum/Read/ReadVariableOp1SGD/cnn/dense/kernel/momentum/Read/ReadVariableOp/SGD/cnn/dense/bias/momentum/Read/ReadVariableOp3SGD/cnn/dense_1/kernel/momentum/Read/ReadVariableOp1SGD/cnn/dense_1/bias/momentum/Read/ReadVariableOp3SGD/cnn/dense_2/kernel/momentum/Read/ReadVariableOp1SGD/cnn/dense_2/bias/momentum/Read/ReadVariableOpConst*1
Tin*
(2&	*
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
GPU 2J 8 *'
f"R 
__inference__traced_save_96162
й
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamecnn/conv2d/kernelcnn/conv2d/biascnn/conv2d_1/kernelcnn/conv2d_1/biascnn/conv2d_2/kernelcnn/conv2d_2/biascnn/conv2d_3/kernelcnn/conv2d_3/biascnn/dense/kernelcnn/dense/biascnn/dense_1/kernelcnn/dense_1/biascnn/dense_2/kernelcnn/dense_2/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotal_1count_1totalcountSGD/cnn/conv2d/kernel/momentumSGD/cnn/conv2d/bias/momentum SGD/cnn/conv2d_1/kernel/momentumSGD/cnn/conv2d_1/bias/momentum SGD/cnn/conv2d_2/kernel/momentumSGD/cnn/conv2d_2/bias/momentum SGD/cnn/conv2d_3/kernel/momentumSGD/cnn/conv2d_3/bias/momentumSGD/cnn/dense/kernel/momentumSGD/cnn/dense/bias/momentumSGD/cnn/dense_1/kernel/momentumSGD/cnn/dense_1/bias/momentumSGD/cnn/dense_2/kernel/momentumSGD/cnn/dense_2/bias/momentum*0
Tin)
'2%*
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
GPU 2J 8 **
f%R#
!__inference__traced_restore_96280ай

ќ
C__inference_conv2d_1_layer_call_and_return_conditional_losses_95912

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs

ќ
C__inference_conv2d_3_layer_call_and_return_conditional_losses_95962

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ

@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ

@
 
_user_specified_nameinputs
а
џ
#__inference_signature_wrapper_95783
input_1!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3: @
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:
Ш
	unknown_8:	Ш
	unknown_9:
ШШ

unknown_10:	Ш

unknown_11:	Ш


unknown_12:

identityЂStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_95413o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:џџџџџџџџџ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_1

ќ
C__inference_conv2d_3_layer_call_and_return_conditional_losses_95507

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ

@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ

@
 
_user_specified_nameinputs
ш

(__inference_conv2d_2_layer_call_fn_95931

inputs!
unknown: @
	unknown_0:@
identityЂStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ

@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_95490w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ

@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs

ќ
C__inference_conv2d_1_layer_call_and_return_conditional_losses_95472

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
ПB
т

>__inference_cnn_layer_call_and_return_conditional_losses_95872

inputs?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: A
'conv2d_1_conv2d_readvariableop_resource:  6
(conv2d_1_biasadd_readvariableop_resource: A
'conv2d_2_conv2d_readvariableop_resource: @6
(conv2d_2_biasadd_readvariableop_resource:@A
'conv2d_3_conv2d_readvariableop_resource:@@6
(conv2d_3_biasadd_readvariableop_resource:@8
$dense_matmul_readvariableop_resource:
Ш4
%dense_biasadd_readvariableop_resource:	Ш:
&dense_1_matmul_readvariableop_resource:
ШШ6
'dense_1_biasadd_readvariableop_resource:	Ш9
&dense_2_matmul_readvariableop_resource:	Ш
5
'dense_2_biasadd_readvariableop_resource:

identityЂconv2d/BiasAdd/ReadVariableOpЂconv2d/Conv2D/ReadVariableOpЂconv2d_1/BiasAdd/ReadVariableOpЂconv2d_1/Conv2D/ReadVariableOpЂconv2d_2/BiasAdd/ReadVariableOpЂconv2d_2/Conv2D/ReadVariableOpЂconv2d_3/BiasAdd/ReadVariableOpЂconv2d_3/Conv2D/ReadVariableOpЂdense/BiasAdd/ReadVariableOpЂdense/MatMul/ReadVariableOpЂdense_1/BiasAdd/ReadVariableOpЂdense_1/MatMul/ReadVariableOpЂdense_2/BiasAdd/ReadVariableOpЂdense_2/MatMul/ReadVariableOp
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ј
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ *
paddingVALID*
strides

conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ f
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ 
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0П
conv2d_1/Conv2DConv2Dconv2d/Relu:activations:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ *
paddingVALID*
strides

conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ j
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ Њ
max_pooling2d/MaxPoolMaxPoolconv2d_1/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ *
ksize
*
paddingVALID*
strides

conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ф
conv2d_2/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ

@*
paddingVALID*
strides

conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ

@j
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ

@
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0С
conv2d_3/Conv2DConv2Dconv2d_2/Relu:activations:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingVALID*
strides

conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@j
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@Ќ
max_pooling2d_1/MaxPoolMaxPoolconv2d_3/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ@*
ksize
*
paddingVALID*
strides
^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
flatten/ReshapeReshape max_pooling2d_1/MaxPool:output:0flatten/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
Ш*
dtype0
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
ШШ*
dtype0
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШa
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	Ш
*
dtype0
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ

dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
g
IdentityIdentitydense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ

NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:џџџџџџџџџ: : : : : : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_95434

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
џ

!__inference__traced_restore_96280
file_prefix<
"assignvariableop_cnn_conv2d_kernel: 0
"assignvariableop_1_cnn_conv2d_bias: @
&assignvariableop_2_cnn_conv2d_1_kernel:  2
$assignvariableop_3_cnn_conv2d_1_bias: @
&assignvariableop_4_cnn_conv2d_2_kernel: @2
$assignvariableop_5_cnn_conv2d_2_bias:@@
&assignvariableop_6_cnn_conv2d_3_kernel:@@2
$assignvariableop_7_cnn_conv2d_3_bias:@7
#assignvariableop_8_cnn_dense_kernel:
Ш0
!assignvariableop_9_cnn_dense_bias:	Ш:
&assignvariableop_10_cnn_dense_1_kernel:
ШШ3
$assignvariableop_11_cnn_dense_1_bias:	Ш9
&assignvariableop_12_cnn_dense_2_kernel:	Ш
2
$assignvariableop_13_cnn_dense_2_bias:
&
assignvariableop_14_sgd_iter:	 '
assignvariableop_15_sgd_decay: /
%assignvariableop_16_sgd_learning_rate: *
 assignvariableop_17_sgd_momentum: %
assignvariableop_18_total_1: %
assignvariableop_19_count_1: #
assignvariableop_20_total: #
assignvariableop_21_count: L
2assignvariableop_22_sgd_cnn_conv2d_kernel_momentum: >
0assignvariableop_23_sgd_cnn_conv2d_bias_momentum: N
4assignvariableop_24_sgd_cnn_conv2d_1_kernel_momentum:  @
2assignvariableop_25_sgd_cnn_conv2d_1_bias_momentum: N
4assignvariableop_26_sgd_cnn_conv2d_2_kernel_momentum: @@
2assignvariableop_27_sgd_cnn_conv2d_2_bias_momentum:@N
4assignvariableop_28_sgd_cnn_conv2d_3_kernel_momentum:@@@
2assignvariableop_29_sgd_cnn_conv2d_3_bias_momentum:@E
1assignvariableop_30_sgd_cnn_dense_kernel_momentum:
Ш>
/assignvariableop_31_sgd_cnn_dense_bias_momentum:	ШG
3assignvariableop_32_sgd_cnn_dense_1_kernel_momentum:
ШШ@
1assignvariableop_33_sgd_cnn_dense_1_bias_momentum:	ШF
3assignvariableop_34_sgd_cnn_dense_2_kernel_momentum:	Ш
?
1assignvariableop_35_sgd_cnn_dense_2_bias_momentum:

identity_37ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9ё
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*
valueB%B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBIvariables/0/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/1/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/2/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/3/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/4/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/5/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/6/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/7/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/8/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/9/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/10/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/11/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/12/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/13/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHК
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B к
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Њ
_output_shapes
:::::::::::::::::::::::::::::::::::::*3
dtypes)
'2%	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOpAssignVariableOp"assignvariableop_cnn_conv2d_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_1AssignVariableOp"assignvariableop_1_cnn_conv2d_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_2AssignVariableOp&assignvariableop_2_cnn_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOp_3AssignVariableOp$assignvariableop_3_cnn_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_4AssignVariableOp&assignvariableop_4_cnn_conv2d_2_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOp_5AssignVariableOp$assignvariableop_5_cnn_conv2d_2_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_6AssignVariableOp&assignvariableop_6_cnn_conv2d_3_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOp_7AssignVariableOp$assignvariableop_7_cnn_conv2d_3_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_8AssignVariableOp#assignvariableop_8_cnn_dense_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_9AssignVariableOp!assignvariableop_9_cnn_dense_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_10AssignVariableOp&assignvariableop_10_cnn_dense_1_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_11AssignVariableOp$assignvariableop_11_cnn_dense_1_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_12AssignVariableOp&assignvariableop_12_cnn_dense_2_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_13AssignVariableOp$assignvariableop_13_cnn_dense_2_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:Е
AssignVariableOp_14AssignVariableOpassignvariableop_14_sgd_iterIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ж
AssignVariableOp_15AssignVariableOpassignvariableop_15_sgd_decayIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_16AssignVariableOp%assignvariableop_16_sgd_learning_rateIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_17AssignVariableOp assignvariableop_17_sgd_momentumIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_18AssignVariableOpassignvariableop_18_total_1Identity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_19AssignVariableOpassignvariableop_19_count_1Identity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_20AssignVariableOpassignvariableop_20_totalIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_21AssignVariableOpassignvariableop_21_countIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_22AssignVariableOp2assignvariableop_22_sgd_cnn_conv2d_kernel_momentumIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_23AssignVariableOp0assignvariableop_23_sgd_cnn_conv2d_bias_momentumIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_24AssignVariableOp4assignvariableop_24_sgd_cnn_conv2d_1_kernel_momentumIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_25AssignVariableOp2assignvariableop_25_sgd_cnn_conv2d_1_bias_momentumIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_26AssignVariableOp4assignvariableop_26_sgd_cnn_conv2d_2_kernel_momentumIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_27AssignVariableOp2assignvariableop_27_sgd_cnn_conv2d_2_bias_momentumIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_28AssignVariableOp4assignvariableop_28_sgd_cnn_conv2d_3_kernel_momentumIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_29AssignVariableOp2assignvariableop_29_sgd_cnn_conv2d_3_bias_momentumIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_30AssignVariableOp1assignvariableop_30_sgd_cnn_dense_kernel_momentumIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_31AssignVariableOp/assignvariableop_31_sgd_cnn_dense_bias_momentumIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_32AssignVariableOp3assignvariableop_32_sgd_cnn_dense_1_kernel_momentumIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_33AssignVariableOp1assignvariableop_33_sgd_cnn_dense_1_bias_momentumIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_34AssignVariableOp3assignvariableop_34_sgd_cnn_dense_2_kernel_momentumIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_35AssignVariableOp1assignvariableop_35_sgd_cnn_dense_2_bias_momentumIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 ч
Identity_36Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_37IdentityIdentity_36:output:0^NoOp_1*
T0*
_output_shapes
: д
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_37Identity_37:output:0*]
_input_shapesL
J: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352(
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
С

%__inference_dense_layer_call_fn_95981

inputs
unknown:
Ш
	unknown_0:	Ш
identityЂStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџШ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_95527p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

ќ
C__inference_conv2d_2_layer_call_and_return_conditional_losses_95942

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ

@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ

@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ

@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ

@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Щ	
є
B__inference_dense_2_layer_call_and_return_conditional_losses_95560

inputs1
matmul_readvariableop_resource:	Ш
-
biasadd_readvariableop_resource:

identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Ш
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџШ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџШ
 
_user_specified_nameinputs
Ѕ

і
B__inference_dense_1_layer_call_and_return_conditional_losses_96012

inputs2
matmul_readvariableop_resource:
ШШ.
biasadd_readvariableop_resource:	Ш
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ШШ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџШb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџШ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџШ
 
_user_specified_nameinputs
Ѕ

і
B__inference_dense_1_layer_call_and_return_conditional_losses_95544

inputs2
matmul_readvariableop_resource:
ШШ.
biasadd_readvariableop_resource:	Ш
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ШШ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџШb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџШ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџШ
 
_user_specified_nameinputs
Щ	
є
B__inference_dense_2_layer_call_and_return_conditional_losses_96031

inputs1
matmul_readvariableop_resource:	Ш
-
biasadd_readvariableop_resource:

identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Ш
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџШ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџШ
 
_user_specified_nameinputs
ш

(__inference_conv2d_3_layer_call_fn_95951

inputs!
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_95507w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ

@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ

@
 
_user_specified_nameinputs

d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_95422

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
В
I
-__inference_max_pooling2d_layer_call_fn_95917

inputs
identityж
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_95422
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ѓ

є
@__inference_dense_layer_call_and_return_conditional_losses_95527

inputs2
matmul_readvariableop_resource:
Ш.
biasadd_readvariableop_resource:	Ш
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Ш*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџШb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ю
џ
#__inference_cnn_layer_call_fn_95598
input_1!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3: @
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:
Ш
	unknown_8:	Ш
	unknown_9:
ШШ

unknown_10:	Ш

unknown_11:	Ш


unknown_12:

identityЂStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_cnn_layer_call_and_return_conditional_losses_95567o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:џџџџџџџџџ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_1
ф

&__inference_conv2d_layer_call_fn_95881

inputs!
unknown: 
	unknown_0: 
identityЂStatefulPartitionedCallо
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_95455w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

њ
A__inference_conv2d_layer_call_and_return_conditional_losses_95455

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ц,
Ѕ
>__inference_cnn_layer_call_and_return_conditional_losses_95744
input_1&
conv2d_95704: 
conv2d_95706: (
conv2d_1_95709:  
conv2d_1_95711: (
conv2d_2_95715: @
conv2d_2_95717:@(
conv2d_3_95720:@@
conv2d_3_95722:@
dense_95728:
Ш
dense_95730:	Ш!
dense_1_95733:
ШШ
dense_1_95735:	Ш 
dense_2_95738:	Ш

dense_2_95740:

identityЂconv2d/StatefulPartitionedCallЂ conv2d_1/StatefulPartitionedCallЂ conv2d_2/StatefulPartitionedCallЂ conv2d_3/StatefulPartitionedCallЂdense/StatefulPartitionedCallЂdense_1/StatefulPartitionedCallЂdense_2/StatefulPartitionedCallю
conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_95704conv2d_95706*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_95455
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_95709conv2d_1_95711*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_95472ь
max_pooling2d/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_95422
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_2_95715conv2d_2_95717*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ

@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_95490
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_95720conv2d_3_95722*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_95507№
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_95434^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
flatten/ReshapeReshape(max_pooling2d_1/PartitionedCall:output:0flatten/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџє
dense/StatefulPartitionedCallStatefulPartitionedCallflatten/Reshape:output:0dense_95728dense_95730*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџШ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_95527
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_95733dense_1_95735*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџШ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_95544
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_95738dense_2_95740*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_95560w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
Д
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:џџџџџџџџџ: : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:X T
/
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_1
ы
ў
#__inference_cnn_layer_call_fn_95816

inputs!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3: @
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:
Ш
	unknown_8:	Ш
	unknown_9:
ШШ

unknown_10:	Ш

unknown_11:	Ш


unknown_12:

identityЂStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_cnn_layer_call_and_return_conditional_losses_95567o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:џџџџџџџџџ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

њ
A__inference_conv2d_layer_call_and_return_conditional_losses_95892

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Х

'__inference_dense_1_layer_call_fn_96001

inputs
unknown:
ШШ
	unknown_0:	Ш
identityЂStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџШ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_95544p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџШ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџШ
 
_user_specified_nameinputs
С

'__inference_dense_2_layer_call_fn_96021

inputs
unknown:	Ш

	unknown_0:

identityЂStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_95560o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџШ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџШ
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_95972

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
У,
Є
>__inference_cnn_layer_call_and_return_conditional_losses_95567

inputs&
conv2d_95456: 
conv2d_95458: (
conv2d_1_95473:  
conv2d_1_95475: (
conv2d_2_95491: @
conv2d_2_95493:@(
conv2d_3_95508:@@
conv2d_3_95510:@
dense_95528:
Ш
dense_95530:	Ш!
dense_1_95545:
ШШ
dense_1_95547:	Ш 
dense_2_95561:	Ш

dense_2_95563:

identityЂconv2d/StatefulPartitionedCallЂ conv2d_1/StatefulPartitionedCallЂ conv2d_2/StatefulPartitionedCallЂ conv2d_3/StatefulPartitionedCallЂdense/StatefulPartitionedCallЂdense_1/StatefulPartitionedCallЂdense_2/StatefulPartitionedCallэ
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_95456conv2d_95458*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_95455
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_95473conv2d_1_95475*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_95472ь
max_pooling2d/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_95422
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_2_95491conv2d_2_95493*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ

@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_95490
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_95508conv2d_3_95510*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_95507№
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_95434^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
flatten/ReshapeReshape(max_pooling2d_1/PartitionedCall:output:0flatten/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџє
dense/StatefulPartitionedCallStatefulPartitionedCallflatten/Reshape:output:0dense_95528dense_95530*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџШ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_95527
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_95545dense_1_95547*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџШ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_95544
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_95561dense_2_95563*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_95560w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
Д
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:џџџџџџџџџ: : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

ќ
C__inference_conv2d_2_layer_call_and_return_conditional_losses_95490

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ

@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ

@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ

@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ

@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
L
ч
__inference__traced_save_96162
file_prefix0
,savev2_cnn_conv2d_kernel_read_readvariableop.
*savev2_cnn_conv2d_bias_read_readvariableop2
.savev2_cnn_conv2d_1_kernel_read_readvariableop0
,savev2_cnn_conv2d_1_bias_read_readvariableop2
.savev2_cnn_conv2d_2_kernel_read_readvariableop0
,savev2_cnn_conv2d_2_bias_read_readvariableop2
.savev2_cnn_conv2d_3_kernel_read_readvariableop0
,savev2_cnn_conv2d_3_bias_read_readvariableop/
+savev2_cnn_dense_kernel_read_readvariableop-
)savev2_cnn_dense_bias_read_readvariableop1
-savev2_cnn_dense_1_kernel_read_readvariableop/
+savev2_cnn_dense_1_bias_read_readvariableop1
-savev2_cnn_dense_2_kernel_read_readvariableop/
+savev2_cnn_dense_2_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop=
9savev2_sgd_cnn_conv2d_kernel_momentum_read_readvariableop;
7savev2_sgd_cnn_conv2d_bias_momentum_read_readvariableop?
;savev2_sgd_cnn_conv2d_1_kernel_momentum_read_readvariableop=
9savev2_sgd_cnn_conv2d_1_bias_momentum_read_readvariableop?
;savev2_sgd_cnn_conv2d_2_kernel_momentum_read_readvariableop=
9savev2_sgd_cnn_conv2d_2_bias_momentum_read_readvariableop?
;savev2_sgd_cnn_conv2d_3_kernel_momentum_read_readvariableop=
9savev2_sgd_cnn_conv2d_3_bias_momentum_read_readvariableop<
8savev2_sgd_cnn_dense_kernel_momentum_read_readvariableop:
6savev2_sgd_cnn_dense_bias_momentum_read_readvariableop>
:savev2_sgd_cnn_dense_1_kernel_momentum_read_readvariableop<
8savev2_sgd_cnn_dense_1_bias_momentum_read_readvariableop>
:savev2_sgd_cnn_dense_2_kernel_momentum_read_readvariableop<
8savev2_sgd_cnn_dense_2_bias_momentum_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ю
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*
valueB%B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBIvariables/0/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/1/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/2/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/3/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/4/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/5/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/6/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/7/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/8/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/9/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/10/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/11/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/12/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/13/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЗ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ш
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_cnn_conv2d_kernel_read_readvariableop*savev2_cnn_conv2d_bias_read_readvariableop.savev2_cnn_conv2d_1_kernel_read_readvariableop,savev2_cnn_conv2d_1_bias_read_readvariableop.savev2_cnn_conv2d_2_kernel_read_readvariableop,savev2_cnn_conv2d_2_bias_read_readvariableop.savev2_cnn_conv2d_3_kernel_read_readvariableop,savev2_cnn_conv2d_3_bias_read_readvariableop+savev2_cnn_dense_kernel_read_readvariableop)savev2_cnn_dense_bias_read_readvariableop-savev2_cnn_dense_1_kernel_read_readvariableop+savev2_cnn_dense_1_bias_read_readvariableop-savev2_cnn_dense_2_kernel_read_readvariableop+savev2_cnn_dense_2_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop9savev2_sgd_cnn_conv2d_kernel_momentum_read_readvariableop7savev2_sgd_cnn_conv2d_bias_momentum_read_readvariableop;savev2_sgd_cnn_conv2d_1_kernel_momentum_read_readvariableop9savev2_sgd_cnn_conv2d_1_bias_momentum_read_readvariableop;savev2_sgd_cnn_conv2d_2_kernel_momentum_read_readvariableop9savev2_sgd_cnn_conv2d_2_bias_momentum_read_readvariableop;savev2_sgd_cnn_conv2d_3_kernel_momentum_read_readvariableop9savev2_sgd_cnn_conv2d_3_bias_momentum_read_readvariableop8savev2_sgd_cnn_dense_kernel_momentum_read_readvariableop6savev2_sgd_cnn_dense_bias_momentum_read_readvariableop:savev2_sgd_cnn_dense_1_kernel_momentum_read_readvariableop8savev2_sgd_cnn_dense_1_bias_momentum_read_readvariableop:savev2_sgd_cnn_dense_2_kernel_momentum_read_readvariableop8savev2_sgd_cnn_dense_2_bias_momentum_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *3
dtypes)
'2%	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Г
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*з
_input_shapesХ
Т: : : :  : : @:@:@@:@:
Ш:Ш:
ШШ:Ш:	Ш
:
: : : : : : : : : : :  : : @:@:@@:@:
Ш:Ш:
ШШ:Ш:	Ш
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:&	"
 
_output_shapes
:
Ш:!


_output_shapes	
:Ш:&"
 
_output_shapes
:
ШШ:!

_output_shapes	
:Ш:%!

_output_shapes
:	Ш
: 

_output_shapes
:
:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:&"
 
_output_shapes
:
Ш:! 

_output_shapes	
:Ш:&!"
 
_output_shapes
:
ШШ:!"

_output_shapes	
:Ш:%#!

_output_shapes
:	Ш
: $

_output_shapes
:
:%

_output_shapes
: 
Ж
K
/__inference_max_pooling2d_1_layer_call_fn_95967

inputs
identityи
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_95434
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_95922

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ѓ

є
@__inference_dense_layer_call_and_return_conditional_losses_95992

inputs2
matmul_readvariableop_resource:
Ш.
biasadd_readvariableop_resource:	Ш
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Ш*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџШb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ш

(__inference_conv2d_1_layer_call_fn_95901

inputs!
unknown:  
	unknown_0: 
identityЂStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_95472w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
ЅG
Е
 __inference__wrapped_model_95413
input_1C
)cnn_conv2d_conv2d_readvariableop_resource: 8
*cnn_conv2d_biasadd_readvariableop_resource: E
+cnn_conv2d_1_conv2d_readvariableop_resource:  :
,cnn_conv2d_1_biasadd_readvariableop_resource: E
+cnn_conv2d_2_conv2d_readvariableop_resource: @:
,cnn_conv2d_2_biasadd_readvariableop_resource:@E
+cnn_conv2d_3_conv2d_readvariableop_resource:@@:
,cnn_conv2d_3_biasadd_readvariableop_resource:@<
(cnn_dense_matmul_readvariableop_resource:
Ш8
)cnn_dense_biasadd_readvariableop_resource:	Ш>
*cnn_dense_1_matmul_readvariableop_resource:
ШШ:
+cnn_dense_1_biasadd_readvariableop_resource:	Ш=
*cnn_dense_2_matmul_readvariableop_resource:	Ш
9
+cnn_dense_2_biasadd_readvariableop_resource:

identityЂ!cnn/conv2d/BiasAdd/ReadVariableOpЂ cnn/conv2d/Conv2D/ReadVariableOpЂ#cnn/conv2d_1/BiasAdd/ReadVariableOpЂ"cnn/conv2d_1/Conv2D/ReadVariableOpЂ#cnn/conv2d_2/BiasAdd/ReadVariableOpЂ"cnn/conv2d_2/Conv2D/ReadVariableOpЂ#cnn/conv2d_3/BiasAdd/ReadVariableOpЂ"cnn/conv2d_3/Conv2D/ReadVariableOpЂ cnn/dense/BiasAdd/ReadVariableOpЂcnn/dense/MatMul/ReadVariableOpЂ"cnn/dense_1/BiasAdd/ReadVariableOpЂ!cnn/dense_1/MatMul/ReadVariableOpЂ"cnn/dense_2/BiasAdd/ReadVariableOpЂ!cnn/dense_2/MatMul/ReadVariableOp
 cnn/conv2d/Conv2D/ReadVariableOpReadVariableOp)cnn_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Б
cnn/conv2d/Conv2DConv2Dinput_1(cnn/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ *
paddingVALID*
strides

!cnn/conv2d/BiasAdd/ReadVariableOpReadVariableOp*cnn_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
cnn/conv2d/BiasAddBiasAddcnn/conv2d/Conv2D:output:0)cnn/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ n
cnn/conv2d/ReluRelucnn/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ 
"cnn/conv2d_1/Conv2D/ReadVariableOpReadVariableOp+cnn_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Ы
cnn/conv2d_1/Conv2DConv2Dcnn/conv2d/Relu:activations:0*cnn/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ *
paddingVALID*
strides

#cnn/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp,cnn_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Є
cnn/conv2d_1/BiasAddBiasAddcnn/conv2d_1/Conv2D:output:0+cnn/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ r
cnn/conv2d_1/ReluRelucnn/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ В
cnn/max_pooling2d/MaxPoolMaxPoolcnn/conv2d_1/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ *
ksize
*
paddingVALID*
strides

"cnn/conv2d_2/Conv2D/ReadVariableOpReadVariableOp+cnn_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0а
cnn/conv2d_2/Conv2DConv2D"cnn/max_pooling2d/MaxPool:output:0*cnn/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ

@*
paddingVALID*
strides

#cnn/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp,cnn_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Є
cnn/conv2d_2/BiasAddBiasAddcnn/conv2d_2/Conv2D:output:0+cnn/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ

@r
cnn/conv2d_2/ReluRelucnn/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ

@
"cnn/conv2d_3/Conv2D/ReadVariableOpReadVariableOp+cnn_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Э
cnn/conv2d_3/Conv2DConv2Dcnn/conv2d_2/Relu:activations:0*cnn/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingVALID*
strides

#cnn/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp,cnn_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Є
cnn/conv2d_3/BiasAddBiasAddcnn/conv2d_3/Conv2D:output:0+cnn/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@r
cnn/conv2d_3/ReluRelucnn/conv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@Д
cnn/max_pooling2d_1/MaxPoolMaxPoolcnn/conv2d_3/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ@*
ksize
*
paddingVALID*
strides
b
cnn/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
cnn/flatten/ReshapeReshape$cnn/max_pooling2d_1/MaxPool:output:0cnn/flatten/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
cnn/dense/MatMul/ReadVariableOpReadVariableOp(cnn_dense_matmul_readvariableop_resource* 
_output_shapes
:
Ш*
dtype0
cnn/dense/MatMulMatMulcnn/flatten/Reshape:output:0'cnn/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
 cnn/dense/BiasAdd/ReadVariableOpReadVariableOp)cnn_dense_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0
cnn/dense/BiasAddBiasAddcnn/dense/MatMul:product:0(cnn/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШe
cnn/dense/ReluRelucnn/dense/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
!cnn/dense_1/MatMul/ReadVariableOpReadVariableOp*cnn_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
ШШ*
dtype0
cnn/dense_1/MatMulMatMulcnn/dense/Relu:activations:0)cnn/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
"cnn/dense_1/BiasAdd/ReadVariableOpReadVariableOp+cnn_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0
cnn/dense_1/BiasAddBiasAddcnn/dense_1/MatMul:product:0*cnn/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШi
cnn/dense_1/ReluRelucnn/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
!cnn/dense_2/MatMul/ReadVariableOpReadVariableOp*cnn_dense_2_matmul_readvariableop_resource*
_output_shapes
:	Ш
*
dtype0
cnn/dense_2/MatMulMatMulcnn/dense_1/Relu:activations:0)cnn/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ

"cnn/dense_2/BiasAdd/ReadVariableOpReadVariableOp+cnn_dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0
cnn/dense_2/BiasAddBiasAddcnn/dense_2/MatMul:product:0*cnn/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
k
IdentityIdentitycnn/dense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
Х
NoOpNoOp"^cnn/conv2d/BiasAdd/ReadVariableOp!^cnn/conv2d/Conv2D/ReadVariableOp$^cnn/conv2d_1/BiasAdd/ReadVariableOp#^cnn/conv2d_1/Conv2D/ReadVariableOp$^cnn/conv2d_2/BiasAdd/ReadVariableOp#^cnn/conv2d_2/Conv2D/ReadVariableOp$^cnn/conv2d_3/BiasAdd/ReadVariableOp#^cnn/conv2d_3/Conv2D/ReadVariableOp!^cnn/dense/BiasAdd/ReadVariableOp ^cnn/dense/MatMul/ReadVariableOp#^cnn/dense_1/BiasAdd/ReadVariableOp"^cnn/dense_1/MatMul/ReadVariableOp#^cnn/dense_2/BiasAdd/ReadVariableOp"^cnn/dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:џџџџџџџџџ: : : : : : : : : : : : : : 2F
!cnn/conv2d/BiasAdd/ReadVariableOp!cnn/conv2d/BiasAdd/ReadVariableOp2D
 cnn/conv2d/Conv2D/ReadVariableOp cnn/conv2d/Conv2D/ReadVariableOp2J
#cnn/conv2d_1/BiasAdd/ReadVariableOp#cnn/conv2d_1/BiasAdd/ReadVariableOp2H
"cnn/conv2d_1/Conv2D/ReadVariableOp"cnn/conv2d_1/Conv2D/ReadVariableOp2J
#cnn/conv2d_2/BiasAdd/ReadVariableOp#cnn/conv2d_2/BiasAdd/ReadVariableOp2H
"cnn/conv2d_2/Conv2D/ReadVariableOp"cnn/conv2d_2/Conv2D/ReadVariableOp2J
#cnn/conv2d_3/BiasAdd/ReadVariableOp#cnn/conv2d_3/BiasAdd/ReadVariableOp2H
"cnn/conv2d_3/Conv2D/ReadVariableOp"cnn/conv2d_3/Conv2D/ReadVariableOp2D
 cnn/dense/BiasAdd/ReadVariableOp cnn/dense/BiasAdd/ReadVariableOp2B
cnn/dense/MatMul/ReadVariableOpcnn/dense/MatMul/ReadVariableOp2H
"cnn/dense_1/BiasAdd/ReadVariableOp"cnn/dense_1/BiasAdd/ReadVariableOp2F
!cnn/dense_1/MatMul/ReadVariableOp!cnn/dense_1/MatMul/ReadVariableOp2H
"cnn/dense_2/BiasAdd/ReadVariableOp"cnn/dense_2/BiasAdd/ReadVariableOp2F
!cnn/dense_2/MatMul/ReadVariableOp!cnn/dense_2/MatMul/ReadVariableOp:X T
/
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_1"
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Г
serving_default
C
input_18
serving_default_input_1:0џџџџџџџџџ<
output_10
StatefulPartitionedCall:0џџџџџџџџџ
tensorflow/serving/predict:а
р
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	loss_list
		optimizer
	
conv1
	conv2
maxpool1
	conv3
	conv4
maxpool2
fc1
fc2
fc3
softmax

signatures"
_tf_keras_model

0
1
2
3
4
5
6
7
8
9
10
 11
!12
"13"
trackable_list_wrapper

0
1
2
3
4
5
6
7
8
9
10
 11
!12
"13"
trackable_list_wrapper
 "
trackable_list_wrapper
Ъ
#non_trainable_variables

$layers
%metrics
&layer_regularization_losses
'layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Й
(trace_0
)trace_12
#__inference_cnn_layer_call_fn_95598
#__inference_cnn_layer_call_fn_95816Е
ЌВЈ
FullArgSpec+
args# 
jself
jinputs
j
is_testing
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z(trace_0z)trace_1
я
*trace_0
+trace_12И
>__inference_cnn_layer_call_and_return_conditional_losses_95872
>__inference_cnn_layer_call_and_return_conditional_losses_95744Е
ЌВЈ
FullArgSpec+
args# 
jself
jinputs
j
is_testing
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z*trace_0z+trace_1
ЫBШ
 __inference__wrapped_model_95413input_1"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
З
,iter
	-decay
.learning_rate
/momentummomentumЖmomentumЗmomentumИmomentumЙmomentumКmomentumЛmomentumМmomentumНmomentumОmomentumПmomentumР momentumС!momentumТ"momentumУ"
	optimizer
н
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses

kernel
bias
 6_jit_compiled_convolution_op"
_tf_keras_layer
н
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses

kernel
bias
 =_jit_compiled_convolution_op"
_tf_keras_layer
Ѕ
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses"
_tf_keras_layer
н
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses

kernel
bias
 J_jit_compiled_convolution_op"
_tf_keras_layer
н
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses

kernel
bias
 Q_jit_compiled_convolution_op"
_tf_keras_layer
Ѕ
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses"
_tf_keras_layer
Л
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
Л
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses

kernel
 bias"
_tf_keras_layer
Л
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses

!kernel
"bias"
_tf_keras_layer
(
j	keras_api"
_tf_keras_layer
,
kserving_default"
signature_map
+:) 2cnn/conv2d/kernel
: 2cnn/conv2d/bias
-:+  2cnn/conv2d_1/kernel
: 2cnn/conv2d_1/bias
-:+ @2cnn/conv2d_2/kernel
:@2cnn/conv2d_2/bias
-:+@@2cnn/conv2d_3/kernel
:@2cnn/conv2d_3/bias
$:"
Ш2cnn/dense/kernel
:Ш2cnn/dense/bias
&:$
ШШ2cnn/dense_1/kernel
:Ш2cnn/dense_1/bias
%:#	Ш
2cnn/dense_2/kernel
:
2cnn/dense_2/bias
 "
trackable_list_wrapper
f

0
1
2
3
4
5
6
7
8
9"
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ыBш
#__inference_cnn_layer_call_fn_95598input_1"Е
ЌВЈ
FullArgSpec+
args# 
jself
jinputs
j
is_testing
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ъBч
#__inference_cnn_layer_call_fn_95816inputs"Е
ЌВЈ
FullArgSpec+
args# 
jself
jinputs
j
is_testing
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
>__inference_cnn_layer_call_and_return_conditional_losses_95872inputs"Е
ЌВЈ
FullArgSpec+
args# 
jself
jinputs
j
is_testing
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
>__inference_cnn_layer_call_and_return_conditional_losses_95744input_1"Е
ЌВЈ
FullArgSpec+
args# 
jself
jinputs
j
is_testing
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
ъ
strace_02Э
&__inference_conv2d_layer_call_fn_95881Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zstrace_0

ttrace_02ш
A__inference_conv2d_layer_call_and_return_conditional_losses_95892Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zttrace_0
Д2БЎ
ЃВ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
ь
ztrace_02Я
(__inference_conv2d_1_layer_call_fn_95901Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zztrace_0

{trace_02ъ
C__inference_conv2d_1_layer_call_and_return_conditional_losses_95912Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z{trace_0
Д2БЎ
ЃВ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Ў
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
layer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses"
_generic_user_object
ѓ
trace_02д
-__inference_max_pooling2d_layer_call_fn_95917Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02я
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_95922Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
ю
trace_02Я
(__inference_conv2d_2_layer_call_fn_95931Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02ъ
C__inference_conv2d_2_layer_call_and_return_conditional_losses_95942Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
Д2БЎ
ЃВ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
ю
trace_02Я
(__inference_conv2d_3_layer_call_fn_95951Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02ъ
C__inference_conv2d_3_layer_call_and_return_conditional_losses_95962Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
Д2БЎ
ЃВ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object
ѕ
trace_02ж
/__inference_max_pooling2d_1_layer_call_fn_95967Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02ё
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_95972Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
ы
trace_02Ь
%__inference_dense_layer_call_fn_95981Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02ч
@__inference_dense_layer_call_and_return_conditional_losses_95992Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
 layers
Ёmetrics
 Ђlayer_regularization_losses
Ѓlayer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
э
Єtrace_02Ю
'__inference_dense_1_layer_call_fn_96001Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЄtrace_0

Ѕtrace_02щ
B__inference_dense_1_layer_call_and_return_conditional_losses_96012Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЅtrace_0
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Іnon_trainable_variables
Їlayers
Јmetrics
 Љlayer_regularization_losses
Њlayer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
э
Ћtrace_02Ю
'__inference_dense_2_layer_call_fn_96021Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЋtrace_0

Ќtrace_02щ
B__inference_dense_2_layer_call_and_return_conditional_losses_96031Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЌtrace_0
"
_generic_user_object
ЪBЧ
#__inference_signature_wrapper_95783input_1"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
R
­	variables
Ў	keras_api

Џtotal

Аcount"
_tf_keras_metric
c
Б	variables
В	keras_api

Гtotal

Дcount
Е
_fn_kwargs"
_tf_keras_metric
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
кBз
&__inference_conv2d_layer_call_fn_95881inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ѕBђ
A__inference_conv2d_layer_call_and_return_conditional_losses_95892inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
мBй
(__inference_conv2d_1_layer_call_fn_95901inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
їBє
C__inference_conv2d_1_layer_call_and_return_conditional_losses_95912inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
сBо
-__inference_max_pooling2d_layer_call_fn_95917inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ќBљ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_95922inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
мBй
(__inference_conv2d_2_layer_call_fn_95931inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
їBє
C__inference_conv2d_2_layer_call_and_return_conditional_losses_95942inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
мBй
(__inference_conv2d_3_layer_call_fn_95951inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
їBє
C__inference_conv2d_3_layer_call_and_return_conditional_losses_95962inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
уBр
/__inference_max_pooling2d_1_layer_call_fn_95967inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ўBћ
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_95972inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
йBж
%__inference_dense_layer_call_fn_95981inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
єBё
@__inference_dense_layer_call_and_return_conditional_losses_95992inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
лBи
'__inference_dense_1_layer_call_fn_96001inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
іBѓ
B__inference_dense_1_layer_call_and_return_conditional_losses_96012inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
лBи
'__inference_dense_2_layer_call_fn_96021inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
іBѓ
B__inference_dense_2_layer_call_and_return_conditional_losses_96031inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
0
Џ0
А1"
trackable_list_wrapper
.
­	variables"
_generic_user_object
:  (2total
:  (2count
0
Г0
Д1"
trackable_list_wrapper
.
Б	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
6:4 2SGD/cnn/conv2d/kernel/momentum
(:& 2SGD/cnn/conv2d/bias/momentum
8:6  2 SGD/cnn/conv2d_1/kernel/momentum
*:( 2SGD/cnn/conv2d_1/bias/momentum
8:6 @2 SGD/cnn/conv2d_2/kernel/momentum
*:(@2SGD/cnn/conv2d_2/bias/momentum
8:6@@2 SGD/cnn/conv2d_3/kernel/momentum
*:(@2SGD/cnn/conv2d_3/bias/momentum
/:-
Ш2SGD/cnn/dense/kernel/momentum
(:&Ш2SGD/cnn/dense/bias/momentum
1:/
ШШ2SGD/cnn/dense_1/kernel/momentum
*:(Ш2SGD/cnn/dense_1/bias/momentum
0:.	Ш
2SGD/cnn/dense_2/kernel/momentum
):'
2SGD/cnn/dense_2/bias/momentumЃ
 __inference__wrapped_model_95413 !"8Ђ5
.Ђ+
)&
input_1џџџџџџџџџ
Њ "3Њ0
.
output_1"
output_1џџџџџџџџџ
О
>__inference_cnn_layer_call_and_return_conditional_losses_95744| !"<Ђ9
2Ђ/
)&
input_1џџџџџџџџџ
p 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ

 Н
>__inference_cnn_layer_call_and_return_conditional_losses_95872{ !";Ђ8
1Ђ.
(%
inputsџџџџџџџџџ
p 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ

 
#__inference_cnn_layer_call_fn_95598q !"<Ђ9
2Ђ/
)&
input_1џџџџџџџџџ
p 
Њ "!
unknownџџџџџџџџџ

#__inference_cnn_layer_call_fn_95816p !";Ђ8
1Ђ.
(%
inputsџџџџџџџџџ
p 
Њ "!
unknownџџџџџџџџџ
К
C__inference_conv2d_1_layer_call_and_return_conditional_losses_95912s7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ 
Њ "4Ђ1
*'
tensor_0џџџџџџџџџ 
 
(__inference_conv2d_1_layer_call_fn_95901h7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ 
Њ ")&
unknownџџџџџџџџџ К
C__inference_conv2d_2_layer_call_and_return_conditional_losses_95942s7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ 
Њ "4Ђ1
*'
tensor_0џџџџџџџџџ

@
 
(__inference_conv2d_2_layer_call_fn_95931h7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ 
Њ ")&
unknownџџџџџџџџџ

@К
C__inference_conv2d_3_layer_call_and_return_conditional_losses_95962s7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ

@
Њ "4Ђ1
*'
tensor_0џџџџџџџџџ@
 
(__inference_conv2d_3_layer_call_fn_95951h7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ

@
Њ ")&
unknownџџџџџџџџџ@И
A__inference_conv2d_layer_call_and_return_conditional_losses_95892s7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
Њ "4Ђ1
*'
tensor_0џџџџџџџџџ 
 
&__inference_conv2d_layer_call_fn_95881h7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
Њ ")&
unknownџџџџџџџџџ Ћ
B__inference_dense_1_layer_call_and_return_conditional_losses_96012e 0Ђ-
&Ђ#
!
inputsџџџџџџџџџШ
Њ "-Ђ*
# 
tensor_0џџџџџџџџџШ
 
'__inference_dense_1_layer_call_fn_96001Z 0Ђ-
&Ђ#
!
inputsџџџџџџџџџШ
Њ ""
unknownџџџџџџџџџШЊ
B__inference_dense_2_layer_call_and_return_conditional_losses_96031d!"0Ђ-
&Ђ#
!
inputsџџџџџџџџџШ
Њ ",Ђ)
"
tensor_0џџџџџџџџџ

 
'__inference_dense_2_layer_call_fn_96021Y!"0Ђ-
&Ђ#
!
inputsџџџџџџџџџШ
Њ "!
unknownџџџџџџџџџ
Љ
@__inference_dense_layer_call_and_return_conditional_losses_95992e0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "-Ђ*
# 
tensor_0џџџџџџџџџШ
 
%__inference_dense_layer_call_fn_95981Z0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ ""
unknownџџџџџџџџџШє
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_95972ЅRЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "OЂL
EB
tensor_04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ю
/__inference_max_pooling2d_1_layer_call_fn_95967RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "DA
unknown4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџђ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_95922ЅRЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "OЂL
EB
tensor_04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ь
-__inference_max_pooling2d_layer_call_fn_95917RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "DA
unknown4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџВ
#__inference_signature_wrapper_95783 !"CЂ@
Ђ 
9Њ6
4
input_1)&
input_1џџџџџџџџџ"3Њ0
.
output_1"
output_1џџџџџџџџџ
