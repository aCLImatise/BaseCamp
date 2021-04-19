class: CommandLineTool
id: parsec_histories_download_history.cwl
inputs:
- id: in_history_id
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_jeh_a_id
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_out_f
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- parsec
- histories
- download_history
