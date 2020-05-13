class: CommandLineTool
id: agat_sq_manage_ID.pl.cwl
inputs:
- id: input
  doc: 'STRING: Input GTF/GFF file.'
  type: string
  inputBinding:
    prefix: --input
- id: of
  doc: Output format, if no ouput format is given, the same as the input one detected
    will be used. Otherwise you can force to have a gff version 1 or 2 or 3 by giving
    the corresponding number.
  type: boolean
  inputBinding:
    prefix: --of
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
- agat_sq_manage_ID.pl
