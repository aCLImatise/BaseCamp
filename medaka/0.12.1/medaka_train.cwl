class: CommandLineTool
id: medaka_train.cwl
inputs:
- id: features
  doc: Paths to training data.
  type: string
  inputBinding:
    position: 0
- id: debug
  doc: 'Verbose logging of debug information. (default: 20)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: quiet
  doc: 'Minimal logging; warnings only). (default: 20)'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: train_name
  doc: 'Name for training run. (default: keras_train)'
  type: string
  inputBinding:
    prefix: --train_name
- id: model
  doc: 'Model definition and initial weights .hdf, or .yml with kwargs to build model.
    {r941_min_high_g330, r941_min_high_g344, r941_min_high_g351, r941_prom_high_g330,
    r941_prom_high_g344, r941_prom_high_g351, r941_min_high_g340_rle, r103_min_high_g345,
    r941_prom_snp_g322, r941_prom_variant_g322, r103_prom_snp_g3210, r103_prom_variant_g3210}
    (default: None)'
  type: string
  inputBinding:
    prefix: --model
- id: epochs
  doc: 'Maximum number of trainig epochs. (default: 5000)'
  type: string
  inputBinding:
    prefix: --epochs
- id: batch_size
  doc: 'Training batch size. (default: 100)'
  type: string
  inputBinding:
    prefix: --batch_size
- id: max_samples
  doc: 'Only train on max_samples. (default: inf)'
  type: long
  inputBinding:
    prefix: --max_samples
- id: mini_epochs
  doc: 'Reduce fraction of data per epoch by this factor (default: 1)'
  type: long
  inputBinding:
    prefix: --mini_epochs
- id: seed
  doc: 'Seed for random batch shuffling. (default: None)'
  type: string
  inputBinding:
    prefix: --seed
- id: threads_io
  doc: 'Number of threads for parallel IO. (default: 1)'
  type: string
  inputBinding:
    prefix: --threads_io
- id: device
  doc: 'GPU device to use. (default: 0)'
  type: string
  inputBinding:
    prefix: --device
- id: optimizer
  doc: 'Optimizer to use. (default: rmsprop)'
  type: string
  inputBinding:
    prefix: --optimizer
- id: optim_args
  doc: '=VAL1,KEY2=VAL2... [KEY1=VAL1,KEY2=VAL2... ...] Optimizer key-word arguments.
    (default: None)'
  type: string
  inputBinding:
    prefix: --optim_args
- id: validation_split
  doc: 'Fraction of data to validate on. (default: 0.2)'
  type: string
  inputBinding:
    prefix: --validation_split
- id: validation_features
  doc: 'Paths to validation data (default: None)'
  type: string[]
  inputBinding:
    prefix: --validation_features
outputs: []
cwlVersion: v1.1
baseCommand:
- medaka
- train
