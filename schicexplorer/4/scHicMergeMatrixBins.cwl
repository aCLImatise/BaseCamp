class: CommandLineTool
id: scHicMergeMatrixBins.cwl
inputs:
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
  doc: 'set to merge for using a running window of length --numBins. Must be an odd
    number. (default: False)'
  type: boolean
  inputBinding:
    prefix: --runningWindow
- id: threads
  doc: 'Number of threads. Using the python multiprocessing module. (default: 4)'
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- scHicMergeMatrixBins
