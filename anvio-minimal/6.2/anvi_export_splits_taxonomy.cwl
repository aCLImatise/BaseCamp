class: CommandLineTool
id: anvi_export_splits_taxonomy.cwl
inputs:
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: o
  doc: ''
  type: File
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-export-splits-taxonomy
