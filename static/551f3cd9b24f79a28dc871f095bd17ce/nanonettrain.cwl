class: CommandLineTool
id: nanonettrain.cwl
inputs:
- id: train
  doc: 'Input training data, either a path to fast5 files or a single netcdf file
    (default: None)'
  type: string
  inputBinding:
    prefix: --train
- id: train_list
  doc: 'Strand list constaining training set (default: None)'
  type: string
  inputBinding:
    prefix: --train_list
- id: section
  doc: 'Section of reads to train (default: template)'
  type: string
  inputBinding:
    prefix: --section
- id: val
  doc: 'Input validation data, either a path to fast5 files or a single netcdf file
    (default: None)'
  type: string
  inputBinding:
    prefix: --val
- id: val_list
  doc: 'Strand list constaining validation set (default: None)'
  type: string
  inputBinding:
    prefix: --val_list
- id: workspace
  doc: 'Path for storing training and validation NetCDF files, if not specified a
    temporary file is used. (default: /tmp)'
  type: string
  inputBinding:
    prefix: --workspace
- id: output
  doc: 'Output prefix (default: None)'
  type: string
  inputBinding:
    prefix: --output
- id: model
  doc: 'ANN configuration file (default: /home/ubuntu/.cache /Python-Eggs/nanonet-2.0.0-py2.7-linux-x86_64.egg-
    tmp/nanonet/data/default_model.tmpl)'
  type: string
  inputBinding:
    prefix: --model
- id: km_er_length
  doc: 'Length of kmers to learn. (default: 5)'
  type: string
  inputBinding:
    prefix: --kmer_length
- id: bases
  doc: 'Alphabet of kmers to learn. (default: ACGT)'
  type: string
  inputBinding:
    prefix: --bases
- id: device
  doc: 'ID of CUDA device to use. (default: 0)'
  type: string
  inputBinding:
    prefix: --device
- id: no_cuda
  doc: 'Use CUDA acceleration. (Default: --no-cuda) (default: False)'
  type: boolean
  inputBinding:
    prefix: --no-cuda
- id: window
  doc: 'The detailed list of the entire window. (default: [-1, 0, 1])'
  type: string[]
  inputBinding:
    prefix: --window
- id: max_epochs
  doc: 'Max training epocs, default 500 (default: 500)'
  type: long
  inputBinding:
    prefix: --max_epochs
- id: max_epochs_no_best
  doc: 'Stop training when no improvment for number of epocs, default 50 (default:
    50)'
  type: long
  inputBinding:
    prefix: --max_epochs_no_best
- id: validate_every
  doc: 'Run validation data set every number of epocs. (default: 5)'
  type: string
  inputBinding:
    prefix: --validate_every
- id: parallel_sequences
  doc: 'Number of sequences in a min-batch (default: 125)'
  type: string
  inputBinding:
    prefix: --parallel_sequences
- id: learning_rate
  doc: 'Learning rate parameters of SGD. (default: 1e-05)'
  type: string
  inputBinding:
    prefix: --learning_rate
- id: momentum
  doc: 'Momentum parameter of SGD. (default: 0.9)'
  type: string
  inputBinding:
    prefix: --momentum
- id: cache_path
  doc: 'Path for currennt temporary files. (default: /tmp)'
  type: string
  inputBinding:
    prefix: --cache_path
outputs: []
cwlVersion: v1.1
baseCommand:
- nanonettrain
