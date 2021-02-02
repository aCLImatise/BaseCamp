class: CommandLineTool
id: deepMedicRun.cwl
inputs:
- id: in_new_model
  doc: Create a new CNN model with model parameters at given config file [MODEL_CONF].
  type: File
  inputBinding:
    prefix: -newModel
- id: in_train
  doc: "Train a CNN model with training parameters at given config file [TRAINING_CONF].\n\
    This option can follow a [-newModel MODEL_CONF] option, to create a new model\
    \ and start training it immediately.\nOtherwise, existing model can be specified\
    \ in the training-config file or by the additional option [-model]."
  type: File
  inputBinding:
    prefix: -train
- id: in_test
  doc: "Test with an existing CNN model. The testing session's parameters should be\
    \ given in config file [TESTING_CONF].\nExisting model can be specified in the\
    \ given training-config file or by the additional option [-model].\nThis option\
    \ cannot be used in combination with [-newModel] or [-train]."
  type: File
  inputBinding:
    prefix: -test
- id: in_model
  doc: "The path to a saved existing cnn model, to train or test with.\nThis option\
    \ can follow a [-train] or [-test] option. Not in combination with a [-newModel].\n\
    If given, this option will override any \"model\" parameters given in the train\
    \ or testing configuration file."
  type: File
  inputBinding:
    prefix: -model
- id: in_dev
  doc: "Specify the device to run the process on. Values: [cpu] or [cuda] (default\
    \ = cpu).\nIn the case of multiple GPUs, specify a particular GPU device with\
    \ a number, in the format: cpu cuda2.\nNOTE#1: For GPU processing, CUDA libraries\
    \ must be first added in your environment's PATH and LD_LIBRARY_PATH. See accompanying\
    \ documentation.NOTE#2: If you get problems using the GPU with [cpu cuda], try\
    \ using the old Theano backend with [cpu cuda] or disaable cuDNN. See docs Sec\
    \ 1.3 and 2.2."
  type: long
  inputBinding:
    prefix: -dev
- id: in_pre_trained
  doc: "Use to transfer the weights from a previously trained model to a new model.\n\
    This option must follow a [-newModel] option.\nUsage: ./deepMedicRun -newModel\
    \ /path/to/model/config -pretrained /path/to/pretrained/model\nNOTE: By default,\
    \ parameters are transfered to all layers except the classification layer. Use\
    \ option [-layers] to manually specify layers to pretrain."
  type: File
  inputBinding:
    prefix: -pretrained
- id: in_layers
  doc: "Use only after a [-pretrained] option.\nSpecify to which layers of the new\
    \ model parameters should be transferred to.\nFirst layer is 1. Classification\
    \ layer of original DeepMedic is 11. Same layers from each parallel-pathway will\
    \ be transfered.\nUsage: ./deepMedicRun -newModel /path/to/model/config -pretrained\
    \ /path/to/pretrained/model -layers 1 2 3 ..."
  type: string[]
  inputBinding:
    prefix: -layers
- id: in_reset_optimizer
  doc: "Use optionally with a [-train] command. Does not take an argument.\nUsage:\
    \ ./deepMedicRun -train /path/to/train/config -resetOptimizer ...etc...\nResets\
    \ the model's optimization state before starting the training session (eg number\
    \ of epochs already trained, current learning rate etc).\nIMPORTANT: Trainable\
    \ parameters are NOT reinitialized!\nUseful to begin a secondary training session\
    \ with new learning-rate schedule, in order to fine-tune a previously trained\
    \ model (Doc., Sec. 3.2)\n"
  type: boolean
  inputBinding:
    prefix: -resetOptimizer
- id: in_konstantinos_dot_kamnitsasonetwoaticdotac_dot_uk
  doc: 'optional arguments:'
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- deepMedicRun
