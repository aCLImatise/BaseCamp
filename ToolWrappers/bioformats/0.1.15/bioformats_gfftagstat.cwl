class: CommandLineTool
id: bioformats_gfftagstat.cwl
inputs:
- id: in_source
  doc: filter GFF3 features by the specified source
  type: long
  inputBinding:
    prefix: --source
- id: in_type
  doc: filter GFF3 features by the specified type
  type: long
  inputBinding:
    prefix: --type
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: in_gff_file
  doc: a GFF3 file
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bioformats
- gfftagstat
