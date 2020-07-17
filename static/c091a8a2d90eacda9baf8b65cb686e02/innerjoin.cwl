class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/innerjoin.cwl
inputs:
- id: empty
  doc: replace missing input fields with EMPTY
  type: string
  inputBinding:
    prefix: --empty
- id: main_fields
  doc: join on these FIELDS of MAIN-TABLE
  type: string
  inputBinding:
    prefix: --main-fields
- id: lookup_fields
  doc: join on these FIELDS of LOOKUP-TABLE
  type: string
  inputBinding:
    prefix: --lookup-fields
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- innerjoin
