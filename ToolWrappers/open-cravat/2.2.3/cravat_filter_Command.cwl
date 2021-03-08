class: CommandLineTool
id: cravat_filter_Command.cwl
inputs:
- id: in_var_0
  doc: ''
  type: string?
  inputBinding:
    prefix: -F
- id: in_var_1
  doc: ''
  type: File?
  inputBinding:
    prefix: -f
- id: in_d
  doc: ''
  type: File?
  inputBinding:
    prefix: -d
- id: in_cravat_filter
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/open-cravat:2.2.3--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- cravat-filter
- Command
