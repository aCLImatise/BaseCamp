#!/usr/bin/env cwl-runner

baseCommand:
- hicMergeMatrixBins
class: CommandLineTool
cwlVersion: v1.0
id: hicmergematrixbins
inputs:
- doc: '[--runningWindow] [--help] [--version]'
  id: num_bins
  inputBinding:
    prefix: --numBins
  type: long
- doc: 'Matrix to reduce in h5 format. (default: None)'
  id: matrix
  inputBinding:
    prefix: --matrix
  type: string
- doc: "File name to save the resulting matrix. The output is also a .h5 file. But\
    \ don't add the suffix. (default: None)"
  id: out_filename
  inputBinding:
    prefix: --outFileName
  type: string
- doc: 'Number of bins to merge. (default: None)'
  id: num_bins
  inputBinding:
    prefix: --numBins
  type: long
- doc: 'Set to merge for using a running window of length --numBins. (default: False)'
  id: running_window
  inputBinding:
    prefix: --runningWindow
  type: boolean
