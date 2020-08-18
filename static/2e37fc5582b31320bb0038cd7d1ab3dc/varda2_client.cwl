class: CommandLineTool
id: ../../../varda2_client.cwl
inputs:
- id: protocol
  doc: Server protocol
  type: string
  inputBinding:
    prefix: --protocol
- id: server
  doc: Server hostname
  type: string
  inputBinding:
    prefix: --server
- id: certificate
  doc: Certificate
  type: string
  inputBinding:
    prefix: --certificate
- id: verbose
  doc: Verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- varda2-client
