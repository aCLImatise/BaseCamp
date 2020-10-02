class: CommandLineTool
id: hicMergeMatrixBins.cwl
inputs:
- id: in_num_bins
  doc: 'Number of bins to merge. (default: None)'
  type: long
  inputBinding:
    prefix: --numBins
- id: in_matrix
  doc: 'Matrix to reduce in h5 format. (default: None)'
  type: long
  inputBinding:
    prefix: --matrix
- id: in_out_filename
  doc: "File name to save the resulting matrix. The output is\nalso a .h5 file. But\
    \ don't add the suffix. (default:\nNone)"
  type: File
  inputBinding:
    prefix: --outFileName
- id: in_running_window
  doc: Set to merge for using a running window of length
  type: boolean
  inputBinding:
    prefix: --runningWindow
- id: in_num_bins_dot
  doc: '(default: False)'
  type: boolean
  inputBinding:
    prefix: --numBins.
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_filename
  doc: "File name to save the resulting matrix. The output is\nalso a .h5 file. But\
    \ don't add the suffix. (default:\nNone)"
  type: File
  outputBinding:
    glob: $(inputs.in_out_filename)
cwlVersion: v1.1
baseCommand:
- hicMergeMatrixBins
