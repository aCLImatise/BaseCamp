class: CommandLineTool
id: scHicTxtToSCool.cwl
inputs:
- id: in_matrices
  doc: 'input file(s). (default: None)'
  type: string[]
  inputBinding:
    prefix: --matrices
- id: in_chromosome_sizes
  doc: "Text file with two columns, first column is the name\nof the chromosome, second\
    \ one its length. (default:\nNone)"
  type: long?
  inputBinding:
    prefix: --chromosomeSizes
- id: in_resolution
  doc: 'The resolution of the matrix. (default: None)'
  type: string?
  inputBinding:
    prefix: --resolution
- id: in_out_filename
  doc: 'File name to save the scool matrix. (default: None)'
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
  doc: 'File name to save the scool matrix. (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_out_filename)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/schicexplorer:7--py_0
cwlVersion: v1.1
baseCommand:
- scHicTxtToSCool
