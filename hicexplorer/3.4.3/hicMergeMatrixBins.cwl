class: CommandLineTool
id: hicMergeMatrixBins.cwl
inputs:
- id: num_bins
  doc: '[--runningWindow] [--help] [--version]'
  type: long
  inputBinding:
    prefix: --numBins
- id: matrix
  doc: 'Matrix to reduce in h5 format. (default: None)'
  type: string
  inputBinding:
    prefix: --matrix
- id: out_filename
  doc: "File name to save the resulting matrix. The output is also a .h5 file. But\
    \ don't add the suffix. (default: None)"
  type: string
  inputBinding:
    prefix: --outFileName
- id: num_bins
  doc: 'Number of bins to merge. (default: None)'
  type: long
  inputBinding:
    prefix: --numBins
- id: running_window
  doc: 'Set to merge for using a running window of length --numBins. (default: False)'
  type: boolean
  inputBinding:
    prefix: --runningWindow
outputs: []
cwlVersion: v1.1
baseCommand:
- hicMergeMatrixBins
