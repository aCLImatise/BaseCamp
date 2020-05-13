class: CommandLineTool
id: agat_sp_filter_by_mrnaBlastValue.pl.cwl
inputs:
- id: gff
  doc: Input GTF/GFF file.
  type: boolean
  inputBinding:
    prefix: --gff
- id: blast
  doc: list of the all-vs-all blast file (outfmt 6, blastp)
  type: string
  inputBinding:
    prefix: --blast
- id: outfile
  doc: The name of the output file. By default the output is the standard output.
  type: boolean
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
- agat_sp_filter_by_mrnaBlastValue.pl
