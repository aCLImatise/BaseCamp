class: CommandLineTool
id: agat_sp_fix_features_locations_duplicated.pl.cwl
inputs:
- id: file
  doc: Input GTF/GFF file.
  type: string
  inputBinding:
    prefix: --file
- id: outfile
  doc: Output file. If none given, will be display in standard output.
  type: string
  inputBinding:
    prefix: --outfile
- id: a
  doc: description,
  type: string
  inputBinding:
    prefix: '- a'
- id: as
  doc: relevant information as possible,
  type: string
  inputBinding:
    prefix: '- as'
- id: the
  doc: used,
  type: string
  inputBinding:
    prefix: '- the'
- id: a
  doc: sample,
  type: string
  inputBinding:
    prefix: '- a'
- id: an
  doc: of the expected behaviour that is not occurring.
  type: string
  inputBinding:
    prefix: '- an'
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_sp_fix_features_locations_duplicated.pl
