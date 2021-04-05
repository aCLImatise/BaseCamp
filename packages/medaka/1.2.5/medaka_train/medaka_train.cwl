class: CommandLineTool
id: medaka_train.cwl
inputs:
- id: in_debug
  doc: 'Verbose logging of debug information. (default: 20)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_quiet
  doc: 'Minimal logging; warnings only). (default: 20)'
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_train_name
  doc: 'Name for training run. (default: keras_train)'
  type: string?
  inputBinding:
    prefix: --train_name
- id: in_model
  doc: "Model definition and initial weights .hdf, or .yml\nwith kwargs to build model.\
    \ {r103_min_high_g345,\nr103_min_high_g360, r103_prom_high_g360,\nr103_prom_snp_g3210,\
    \ r103_prom_variant_g3210,\nr10_min_high_g303, r10_min_high_g340,\nr941_min_fast_g303,\
    \ r941_min_high_g303,\nr941_min_high_g330, r941_min_high_g340_rle,\nr941_min_high_g344,\
    \ r941_min_high_g351,\nr941_min_high_g360, r941_prom_fast_g303,\nr941_prom_high_g303,\
    \ r941_prom_high_g330,\nr941_prom_high_g344, r941_prom_high_g360,\nr941_prom_high_g4011,\
    \ r941_prom_snp_g303,\nr941_prom_snp_g322, r941_prom_snp_g360,\nr941_prom_variant_g303,\
    \ r941_prom_variant_g322,\nr941_prom_variant_g360} (default: None)"
  type: long?
  inputBinding:
    prefix: --model
- id: in_epochs
  doc: 'Maximum number of trainig epochs. (default: 5000)'
  type: long?
  inputBinding:
    prefix: --epochs
- id: in_batch_size
  doc: 'Training batch size. (default: 100)'
  type: long?
  inputBinding:
    prefix: --batch_size
- id: in_max_samples
  doc: 'Only train on max_samples. (default: inf)'
  type: long?
  inputBinding:
    prefix: --max_samples
- id: in_mini_epochs
  doc: "Reduce fraction of data per epoch by this factor\n(default: 1)"
  type: long?
  inputBinding:
    prefix: --mini_epochs
- id: in_seed
  doc: 'Seed for random batch shuffling. (default: None)'
  type: string?
  inputBinding:
    prefix: --seed
- id: in_threads_io
  doc: 'Number of threads for parallel IO. (default: 1)'
  type: long?
  inputBinding:
    prefix: --threads_io
- id: in_device
  doc: 'GPU device to use. (default: 0)'
  type: long?
  inputBinding:
    prefix: --device
- id: in_optimizer
  doc: 'Optimizer to use. (default: rmsprop)'
  type: string?
  inputBinding:
    prefix: --optimizer
- id: in_optim_args
  doc: "=VAL1,KEY2=VAL2... [KEY1=VAL1,KEY2=VAL2... ...]\nOptimizer key-word arguments.\
    \ (default: None)"
  type: long?
  inputBinding:
    prefix: --optim_args
- id: in_validation_split
  doc: 'Fraction of data to validate on. (default: 0.2)'
  type: double?
  inputBinding:
    prefix: --validation_split
- id: in_validation_features
  doc: "Paths to validation data (default: None)\n"
  type: string[]
  inputBinding:
    prefix: --validation_features
- id: in_features
  doc: Paths to training data.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/medaka:1.2.5--py38h64b100c_0
cwlVersion: v1.1
baseCommand:
- medaka
- train
