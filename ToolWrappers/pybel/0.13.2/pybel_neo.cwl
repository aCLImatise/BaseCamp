class: CommandLineTool
id: ../../../pybel_neo.cwl
inputs:
- id: in_connection
  doc: Connection string for neo4j upload.
  type: string
  inputBinding:
    prefix: --connection
- id: in_password
  doc: ''
  type: string
  inputBinding:
    prefix: --password
- id: in_path
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pybel
- neo
