class: CommandLineTool
id: ../../../bioformats_gfftagstat.cwl
inputs:
- id: source
  doc: filter GFF3 features by the specified source
  type: string
  inputBinding:
    prefix: --source
- id: type
  doc: filter GFF3 features by the specified type
  type: string
  inputBinding:
    prefix: --type
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: gff_file
  doc: a GFF3 file
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bioformats
- gfftagstat
