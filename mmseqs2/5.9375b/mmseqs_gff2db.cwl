class: CommandLineTool
id: mmseqs_gff2db.cwl
inputs:
- id: gff_type
  doc: 'type in the GFF file to filter by                           '
  type: boolean
  inputBinding:
    prefix: --gff-type
- id: id_offset
  doc: '0               numeric ids in index file are offset by this value          '
  type: boolean
  inputBinding:
    prefix: --id-offset
- id: v
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- mmseqs
- gff2db
