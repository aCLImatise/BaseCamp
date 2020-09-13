class: CommandLineTool
id: ../../../lyner_autoencode.cwl
inputs:
- id: in_layer_config
  doc: ''
  type: string
  inputBinding:
    prefix: --layer-config
- id: in_from_file
  doc: ''
  type: File
  inputBinding:
    prefix: --from-file
- id: in_store_model
  doc: ''
  type: File
  inputBinding:
    prefix: --store-model
- id: in_loss
  doc: '[kld|mae|mape|mse|msle|binary_crossentropy|categorical_crossentropy|categorical_hinge|cosine|cosine_proximity|hinge|logcosh|poisson|sparse_categorical_crossentropy|squared_hinge]'
  type: boolean
  inputBinding:
    prefix: --loss
- id: in_optimiser
  doc: '[adadelta|adagrad|adam|adamax|nadam|rmsprop|sgd]'
  type: boolean
  inputBinding:
    prefix: --optimiser
- id: in_epochs
  doc: ''
  type: long
  inputBinding:
    prefix: --epochs
- id: in_batch_size
  doc: ''
  type: long
  inputBinding:
    prefix: --batch-size
- id: in_shuffle
  doc: ''
  type: boolean
  inputBinding:
    prefix: --shuffle
- id: in_validation_split
  doc: RANGE
  type: double
  inputBinding:
    prefix: --validation-split
- id: in_adjust_weights
  doc: ''
  type: double
  inputBinding:
    prefix: --adjust-weights
- id: in_mode
  doc: '[discard|nodes|weights]'
  type: boolean
  inputBinding:
    prefix: --mode
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lyner
- autoencode
