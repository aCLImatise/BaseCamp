class: CommandLineTool
id: parsec_tools_put_url.cwl
inputs:
- id: in_content
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_history_id
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
  dockerPull: quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- parsec
- tools
- put_url
