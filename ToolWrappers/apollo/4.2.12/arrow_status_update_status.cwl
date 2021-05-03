class: CommandLineTool
id: arrow_status_update_status.cwl
inputs:
- id: in_id_number
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_new_value
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
  dockerPull: quay.io/biocontainers/apollo:4.2.12--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- arrow
- status
- update_status
