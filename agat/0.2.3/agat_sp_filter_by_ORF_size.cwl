class: CommandLineTool
id: agat_sp_filter_by_ORF_size.pl.cwl
inputs:
- id: v
  doc: Verbose. Useful for debugging purpose. Bolean
  type: boolean
  inputBinding:
    prefix: -v
- id: outfile
  doc: Output GFF file. If no output file is specified, the output will be written
    to STDOUT.
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
- agat_sp_filter_by_ORF_size.pl
