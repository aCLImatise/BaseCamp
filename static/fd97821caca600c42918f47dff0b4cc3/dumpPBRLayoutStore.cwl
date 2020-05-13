class: CommandLineTool
id: dumpPBRLayoutStore.cwl
inputs:
- id: pac_bio_dump_layout
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- dumpPBRLayoutStore
