class: CommandLineTool
id: agat_sp_keep_longest_isoform.pl.cwl
inputs:
- id: gff
  doc: GTF/GFF file.
  type: string
  inputBinding:
    prefix: --gff
- id: output
  doc: File where will be written the result. If no output file is specified, the
    output will be written to STDOUT.
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
- agat_sp_keep_longest_isoform.pl
