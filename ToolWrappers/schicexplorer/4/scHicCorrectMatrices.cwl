class: CommandLineTool
id: scHicCorrectMatrices.cwl
inputs:
- id: in_matrix
  doc: 'Matrix to reduce in h5 format. (default: None)'
  type: long?
  inputBinding:
    prefix: --matrix
- id: in_out_filename
  doc: "File name to save the resulting matrix, please add the\nscool prefix. (default:\
    \ None)"
  type: File?
  inputBinding:
    prefix: --outFileName
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
  doc: "File name to save the resulting matrix, please add the\nscool prefix. (default:\
    \ None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_filename)
hints: []
cwlVersion: v1.1
baseCommand:
- scHicCorrectMatrices
