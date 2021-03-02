class: CommandLineTool
id: scHicMergeMatrixBins.cwl
inputs:
- id: in_matrix
  doc: 'Matrix to reduce in scool format. (default: None)'
  type: string?
  inputBinding:
    prefix: --matrix
- id: in_out_filename
  doc: "File name to save the resulting matrix. The output is\nalso a .scool file.\
    \ But don't add the suffix.\n(default: None)"
  type: File?
  inputBinding:
    prefix: --outFileName
- id: in_num_bins
  doc: 'Number of bins to merge. (default: None)'
  type: long?
  inputBinding:
    prefix: --numBins
- id: in_running_window
  doc: set to merge for using a running window of length
  type: boolean?
  inputBinding:
    prefix: --runningWindow
- id: in_num_bins_dot
  doc: 'be an odd number. (default: False)'
  type: long?
  inputBinding:
    prefix: --numBins.
- id: in_threads
  doc: "Number of threads. Using the python multiprocessing\nmodule. (default: 4)"
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_filename
  doc: "File name to save the resulting matrix. The output is\nalso a .scool file.\
    \ But don't add the suffix.\n(default: None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_filename)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/schicexplorer:7--py_0
cwlVersion: v1.1
baseCommand:
- scHicMergeMatrixBins
