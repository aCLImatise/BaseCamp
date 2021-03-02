class: CommandLineTool
id: nanonettrain.cwl
inputs:
- id: in_train
  doc: "Input training data, either a path to fast5 files or a\nsingle netcdf file\
    \ (default: None)"
  type: File?
  inputBinding:
    prefix: --train
- id: in_train_list
  doc: 'Strand list constaining training set (default: None)'
  type: string?
  inputBinding:
    prefix: --train_list
- id: in_section
  doc: 'Section of reads to train (default: template)'
  type: string?
  inputBinding:
    prefix: --section
- id: in_val
  doc: "Input validation data, either a path to fast5 files or\na single netcdf file\
    \ (default: None)"
  type: File?
  inputBinding:
    prefix: --val
- id: in_val_list
  doc: 'Strand list constaining validation set (default: None)'
  type: string?
  inputBinding:
    prefix: --val_list
- id: in_workspace
  doc: "Path for storing training and validation NetCDF files,\nif not specified a\
    \ temporary file is used. (default:\n/tmp)"
  type: File?
  inputBinding:
    prefix: --workspace
- id: in_output
  doc: 'Output prefix (default: None)'
  type: string?
  inputBinding:
    prefix: --output
- id: in_model
  doc: "ANN configuration file (default: /root/.cache/Python-\nEggs/nanonet-2.0.0-py2.7-linux-x86_64.egg-\n\
    tmp/nanonet/data/default_model.tmpl)"
  type: File?
  inputBinding:
    prefix: --model
- id: in_km_er_length
  doc: 'Length of kmers to learn. (default: 5)'
  type: long?
  inputBinding:
    prefix: --kmer_length
- id: in_bases
  doc: 'Alphabet of kmers to learn. (default: ACGT)'
  type: string?
  inputBinding:
    prefix: --bases
- id: in_device
  doc: 'ID of CUDA device to use. (default: 0)'
  type: long?
  inputBinding:
    prefix: --device
- id: in_no_cuda
  doc: "Use CUDA acceleration. (Default: --no-cuda) (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --no-cuda
- id: in_window
  doc: "The detailed list of the entire window. (default: [-1,\n0, 1])"
  type: string[]
  inputBinding:
    prefix: --window
- id: in_max_epochs
  doc: 'Max training epocs, default 500 (default: 500)'
  type: long?
  inputBinding:
    prefix: --max_epochs
- id: in_max_epochs_no_best
  doc: "Stop training when no improvment for number of epocs,\ndefault 50 (default:\
    \ 50)"
  type: long?
  inputBinding:
    prefix: --max_epochs_no_best
- id: in_validate_every
  doc: "Run validation data set every number of epocs.\n(default: 5)"
  type: long?
  inputBinding:
    prefix: --validate_every
- id: in_parallel_sequences
  doc: 'Number of sequences in a min-batch (default: 125)'
  type: long?
  inputBinding:
    prefix: --parallel_sequences
- id: in_learning_rate
  doc: 'Learning rate parameters of SGD. (default: 1e-05)'
  type: double?
  inputBinding:
    prefix: --learning_rate
- id: in_momentum
  doc: 'Momentum parameter of SGD. (default: 0.9)'
  type: double?
  inputBinding:
    prefix: --momentum
- id: in_cache_path
  doc: "Path for currennt temporary files. (default: /tmp)\n"
  type: File?
  inputBinding:
    prefix: --cache_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nanonettrain
