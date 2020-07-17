class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/deepMedicRun.cwl
inputs:
- id: new_model
  doc: Create a new CNN model with model parameters at given config file [MODEL_CONF].
  type: string
  inputBinding:
    prefix: -newModel
- id: train
  doc: Train a CNN model with training parameters at given config file [TRAINING_CONF].
    This option can follow a [-newModel MODEL_CONF] option, to create a new model
    and start training it immediately. Otherwise, existing model can be specified
    in the training-config file or by the additional option [-model].
  type: string
  inputBinding:
    prefix: -train
- id: test
  doc: Test with an existing CNN model. The testing session's parameters should be
    given in config file [TESTING_CONF]. Existing model can be specified in the given
    training-config file or by the additional option [-model]. This option cannot
    be used in combination with [-newModel] or [-train].
  type: string
  inputBinding:
    prefix: -test
- id: model
  doc: The path to a saved existing cnn model, to train or test with. This option
    can follow a [-train] or [-test] option. Not in combination with a [-newModel].
    If given, this option will override any "model" parameters given in the train
    or testing configuration file.
  type: string
  inputBinding:
    prefix: -model
- id: dev
  doc: "Specify the device to run the process on. Values: [cpu] or [cuda] (default\
    \ = cpu). In the case of multiple GPUs, specify a particular GPU device with a\
    \ number, in the format: cpu cuda2. NOTE#1: For GPU processing, CUDA libraries\
    \ must be first added in your environment's PATH and LD_LIBRARY_PATH. See accompanying\
    \ documentation.NOTE#2: If you get problems using the GPU with [cpu cuda], try\
    \ using the old Theano backend with [cpu cuda] or disaable cuDNN. See docs Sec\
    \ 1.3 and 2.2."
  type: string
  inputBinding:
    prefix: -dev
- id: pre_trained
  doc: 'Use to transfer the weights from a previously trained model to a new model.
    This option must follow a [-newModel] option. Usage: ./deepMedicRun -newModel
    /path/to/model/config -pretrained /path/to/pretrained/model  NOTE: By default,
    parameters are transfered to all layers except the classification layer. Use option
    [-layers] to manually specify layers to pretrain.'
  type: string
  inputBinding:
    prefix: -pretrained
- id: layers
  doc: 'Use only after a [-pretrained] option. Specify to which layers of the new
    model parameters should be transferred to. First layer is 1. Classification layer
    of original DeepMedic is 11. Same layers from each parallel-pathway will be transfered.
    Usage: ./deepMedicRun -newModel /path/to/model/config -pretrained /path/to/pretrained/model
    -layers 1 2 3 ...'
  type: string[]
  inputBinding:
    prefix: -layers
- id: reset_optimizer
  doc: "Use optionally with a [-train] command. Does not take an argument. Usage:\
    \ ./deepMedicRun -train /path/to/train/config -resetOptimizer ...etc... Resets\
    \ the model's optimization state before starting the training session (eg number\
    \ of epochs already trained, current learning rate etc). IMPORTANT: Trainable\
    \ parameters are NOT reinitialized!  Useful to begin a secondary training session\
    \ with new learning-rate schedule, in order to fine-tune a previously trained\
    \ model (Doc., Sec. 3.2)"
  type: boolean
  inputBinding:
    prefix: -resetOptimizer
- id: deep_medic
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- deepMedicRun
