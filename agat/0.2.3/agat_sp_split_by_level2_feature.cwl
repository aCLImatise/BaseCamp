class: CommandLineTool
id: agat_sp_split_by_level2_feature.pl.cwl
inputs:
- id: gff
  doc: Input GTF/GFF file.
  type: string
  inputBinding:
    prefix: --gff
- id: output
  doc: Output folder. If no output folder provided, the default name will be <split_result>.
  type: string
  inputBinding:
    prefix: --output
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
- agat_sp_split_by_level2_feature.pl
