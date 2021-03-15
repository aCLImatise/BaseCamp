class: CommandLineTool
id: ffindex_reduce.cwl
inputs:
- id: in_data_filename
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_index_filename
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_program
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_program_args
  doc: ''
  type: string?
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ffindex:0.98--hc9558a2_0
cwlVersion: v1.1
baseCommand:
- ffindex_reduce
