class: CommandLineTool
id: anvi_export_contigs.cwl
inputs:
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: splits_mode
  doc: ''
  type: boolean
  inputBinding:
    prefix: --splits-mode
- id: o
  doc: ''
  type: File
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-export-contigs
