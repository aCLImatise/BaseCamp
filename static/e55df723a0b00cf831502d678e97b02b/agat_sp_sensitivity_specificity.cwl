class: CommandLineTool
id: agat_sp_sensitivity_specificity.pl.cwl
inputs:
- id: gff1
  doc: Input GTF/GFF file 1.
  type: boolean
  inputBinding:
    prefix: -gff1
- id: gff2
  doc: Input GTF/GFF file 2.
  type: boolean
  inputBinding:
    prefix: -gff2
- id: o
  doc: ', --output , --out or --outfile Output GFF file. If no output file is specified,
    the output will be written to STDOUT.'
  type: boolean
  inputBinding:
    prefix: -o
- id: v
  doc: Verbose option for debug purposes.
  type: boolean
  inputBinding:
    prefix: -v
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
- agat_sp_sensitivity_specificity.pl
