class: CommandLineTool
id: qax.cwl
inputs:
- id: in_list
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_file
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/qax:0.9.2--hed695b0_0
cwlVersion: v1.1
baseCommand:
- qax
