class: CommandLineTool
id: esl_compstruct_test file.cwl
inputs:
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_esl_comp_struct
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_trusted_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_test_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/easel:0.47--h516909a_0
cwlVersion: v1.1
baseCommand:
- esl-compstruct
- test file
