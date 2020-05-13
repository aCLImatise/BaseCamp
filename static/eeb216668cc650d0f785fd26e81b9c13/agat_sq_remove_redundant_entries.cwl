class: CommandLineTool
id: agat_sq_remove_redundant_entries.pl.cwl
inputs:
- id: agat_remove_redundant_entries_pl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input
  doc: 'STRING: Input GTF/GFF file.'
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: 'STRING: Output file. If no output file is specified, the output will be written
    to STDOUT. The result is in tabulate format.'
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
- agat_sq_remove_redundant_entries.pl
