class: CommandLineTool
id: scHicAdjustMatrix.cwl
inputs:
- id: in_matrix
  doc: "The matrix to adjust in the scool format. (default:\nNone)"
  type: string
  inputBinding:
    prefix: --matrix
- id: in_out_filename
  doc: 'File name to save the adjusted matrix. (default: None)'
  type: File
  inputBinding:
    prefix: --outFileName
- id: in_chromosomes
  doc: 'List of chromosomes to keep / remove (default: None)'
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: in_create_submatrix
  doc: "Keep only first n matrices and remove the rest. Good\nfor test data creation.\
    \ (default: None)"
  type: string
  inputBinding:
    prefix: --createSubmatrix
- id: in_action
  doc: "Keep, remove or mask the list of specified chromosomes\n/ regions (default:\
    \ keep)"
  type: string
  inputBinding:
    prefix: --action
- id: in_threads
  doc: "Number of threads. Using the python multiprocessing\nmodule. (default: 4)"
  type: long
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_filename
  doc: 'File name to save the adjusted matrix. (default: None)'
  type: File
  outputBinding:
    glob: $(inputs.in_out_filename)
cwlVersion: v1.1
baseCommand:
- scHicAdjustMatrix
