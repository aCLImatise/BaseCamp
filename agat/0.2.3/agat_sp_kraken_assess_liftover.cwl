class: CommandLineTool
id: agat_sp_kraken_assess_liftover.pl.cwl
inputs:
- id: agat_sp_kraken_assess_lift_coverage
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: gff
  doc: Input gtf file produced by Kraken.
  type: boolean
  inputBinding:
    prefix: -gff
- id: threshold
  doc: Gene mapping percentage over which a gene must be reported. By default the
    value is 0.
  type: string
  inputBinding:
    prefix: --threshold
- id: verbose
  doc: Verbose information.
  type: string
  inputBinding:
    prefix: --verbose
- id: o
  doc: ', --output , --out or --outfile Output GFF file. If no output file is specified,
    the output will be written to STDOUT.'
  type: boolean
  inputBinding:
    prefix: -o
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
- agat_sp_kraken_assess_liftover.pl
