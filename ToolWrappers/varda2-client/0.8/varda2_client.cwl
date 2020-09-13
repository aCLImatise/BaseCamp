class: CommandLineTool
id: ../../../varda2_client.cwl
inputs:
- id: in_protocol
  doc: Server protocol
  type: string
  inputBinding:
    prefix: --protocol
- id: in_server
  doc: Server hostname
  type: string
  inputBinding:
    prefix: --server
- id: in_certificate
  doc: ''
  type: string
  inputBinding:
    prefix: --certificate
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- varda2-client
