class: CommandLineTool
id: annotate.cwl
inputs:
- id: in_gap_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_data_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mummer4:4.0.0rc1--pl526he1b5a44_0
cwlVersion: v1.1
baseCommand:
- annotate
