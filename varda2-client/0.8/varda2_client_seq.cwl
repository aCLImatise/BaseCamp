class: CommandLineTool
id: ../../../varda2_client_seq.cwl
inputs:
- id: sequence
  doc: Sequence
  type: string
  inputBinding:
    prefix: --sequence
outputs: []
cwlVersion: v1.1
baseCommand:
- varda2-client
- seq
