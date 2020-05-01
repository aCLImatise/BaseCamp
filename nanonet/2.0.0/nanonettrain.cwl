#!/usr/bin/env cwl-runner

baseCommand:
- nanonettrain
class: CommandLineTool
cwlVersion: v1.0
id: nanonettrain
inputs:
- doc: 'Input training data, either a path to fast5 files or a single netcdf file
    (default: None)'
  id: train
  inputBinding:
    prefix: --train
  type: string
- doc: 'Strand list constaining training set (default: None)'
  id: train_list
  inputBinding:
    prefix: --train_list
  type: string
- doc: 'Section of reads to train (default: template)'
  id: section
  inputBinding:
    prefix: --section
  type: string
- doc: 'Input validation data, either a path to fast5 files or a single netcdf file
    (default: None)'
  id: val
  inputBinding:
    prefix: --val
  type: string
- doc: 'Strand list constaining validation set (default: None)'
  id: val_list
  inputBinding:
    prefix: --val_list
  type: string
- doc: 'Path for storing training and validation NetCDF files, if not specified a
    temporary file is used. (default: /tmp)'
  id: workspace
  inputBinding:
    prefix: --workspace
  type: string
- doc: 'Output prefix (default: None)'
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: 'ANN configuration file (default: /home/ubuntu/.cache /Python-Eggs/nanonet-2.0.0-py2.7-linux-x86_64.egg-
    tmp/nanonet/data/default_model.tmpl)'
  id: model
  inputBinding:
    prefix: --model
  type: string
- doc: 'Length of kmers to learn. (default: 5)'
  id: km_er_length
  inputBinding:
    prefix: --kmer_length
  type: string
- doc: 'Alphabet of kmers to learn. (default: ACGT)'
  id: bases
  inputBinding:
    prefix: --bases
  type: string
- doc: 'ID of CUDA device to use. (default: 0)'
  id: device
  inputBinding:
    prefix: --device
  type: string
- doc: 'Use CUDA acceleration. (Default: --no-cuda) (default: False)'
  id: no_cuda
  inputBinding:
    prefix: --no-cuda
  type: boolean
- doc: 'The detailed list of the entire window. (default: [-1, 0, 1])'
  id: window
  inputBinding:
    prefix: --window
  type:
    items: string
    type: array
- doc: 'Max training epocs, default 500 (default: 500)'
  id: max_epochs
  inputBinding:
    prefix: --max_epochs
  type: long
- doc: 'Stop training when no improvment for number of epocs, default 50 (default:
    50)'
  id: max_epochs_no_best
  inputBinding:
    prefix: --max_epochs_no_best
  type: long
- doc: 'Run validation data set every number of epocs. (default: 5)'
  id: validate_every
  inputBinding:
    prefix: --validate_every
  type: string
- doc: 'Number of sequences in a min-batch (default: 125)'
  id: parallel_sequences
  inputBinding:
    prefix: --parallel_sequences
  type: string
- doc: 'Learning rate parameters of SGD. (default: 1e-05)'
  id: learning_rate
  inputBinding:
    prefix: --learning_rate
  type: string
- doc: 'Momentum parameter of SGD. (default: 0.9)'
  id: momentum
  inputBinding:
    prefix: --momentum
  type: string
- doc: 'Path for currennt temporary files. (default: /tmp)'
  id: cache_path
  inputBinding:
    prefix: --cache_path
  type: string
