version 1.0

task DeepMedicRun {
  input {
    File? new_model
    File? train
    File? test
    File? model
    Int? dev
    File? pre_trained
    Array[String] layers
    Boolean? reset_optimizer
    Int konstantinos_dot_kamnitsasonetwoaticdotac_dot_uk
  }
  command <<<
    deepMedicRun \
      ~{konstantinos_dot_kamnitsasonetwoaticdotac_dot_uk} \
      ~{if defined(new_model) then ("-newModel " +  '"' + new_model + '"') else ""} \
      ~{if defined(train) then ("-train " +  '"' + train + '"') else ""} \
      ~{if defined(test) then ("-test " +  '"' + test + '"') else ""} \
      ~{if defined(model) then ("-model " +  '"' + model + '"') else ""} \
      ~{if defined(dev) then ("-dev " +  '"' + dev + '"') else ""} \
      ~{if defined(pre_trained) then ("-pretrained " +  '"' + pre_trained + '"') else ""} \
      ~{if defined(layers) then ("-layers " +  '"' + layers + '"') else ""} \
      ~{if (reset_optimizer) then "-resetOptimizer" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    new_model: "Create a new CNN model with model parameters at given config file [MODEL_CONF]."
    train: "Train a CNN model with training parameters at given config file [TRAINING_CONF].\\nThis option can follow a [-newModel MODEL_CONF] option, to create a new model and start training it immediately.\\nOtherwise, existing model can be specified in the training-config file or by the additional option [-model]."
    test: "Test with an existing CNN model. The testing session's parameters should be given in config file [TESTING_CONF].\\nExisting model can be specified in the given training-config file or by the additional option [-model].\\nThis option cannot be used in combination with [-newModel] or [-train]."
    model: "The path to a saved existing cnn model, to train or test with.\\nThis option can follow a [-train] or [-test] option. Not in combination with a [-newModel].\\nIf given, this option will override any \\\"model\\\" parameters given in the train or testing configuration file."
    dev: "Specify the device to run the process on. Values: [cpu] or [cuda] (default = cpu).\\nIn the case of multiple GPUs, specify a particular GPU device with a number, in the format: cpu cuda2.\\nNOTE#1: For GPU processing, CUDA libraries must be first added in your environment's PATH and LD_LIBRARY_PATH. See accompanying documentation.NOTE#2: If you get problems using the GPU with [cpu cuda], try using the old Theano backend with [cpu cuda] or disaable cuDNN. See docs Sec 1.3 and 2.2."
    pre_trained: "Use to transfer the weights from a previously trained model to a new model.\\nThis option must follow a [-newModel] option.\\nUsage: ./deepMedicRun -newModel /path/to/model/config -pretrained /path/to/pretrained/model\\nNOTE: By default, parameters are transfered to all layers except the classification layer. Use option [-layers] to manually specify layers to pretrain."
    layers: "Use only after a [-pretrained] option.\\nSpecify to which layers of the new model parameters should be transferred to.\\nFirst layer is 1. Classification layer of original DeepMedic is 11. Same layers from each parallel-pathway will be transfered.\\nUsage: ./deepMedicRun -newModel /path/to/model/config -pretrained /path/to/pretrained/model -layers 1 2 3 ..."
    reset_optimizer: "Use optionally with a [-train] command. Does not take an argument.\\nUsage: ./deepMedicRun -train /path/to/train/config -resetOptimizer ...etc...\\nResets the model's optimization state before starting the training session (eg number of epochs already trained, current learning rate etc).\\nIMPORTANT: Trainable parameters are NOT reinitialized!\\nUseful to begin a secondary training session with new learning-rate schedule, in order to fine-tune a previously trained model (Doc., Sec. 3.2)\\n"
    konstantinos_dot_kamnitsasonetwoaticdotac_dot_uk: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}