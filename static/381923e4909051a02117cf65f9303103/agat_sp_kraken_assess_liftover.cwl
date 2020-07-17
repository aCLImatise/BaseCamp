class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/agat_sp_kraken_assess_liftover.pl.cwl
inputs:
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
- id: _output_
  doc: ', --output , --out or --outfile Output GFF file. If no output file is specified,
    the output will be written to STDOUT.'
  type: boolean
  inputBinding:
    prefix: -o
- id: gtf
  doc: ''
  type: string
  inputBinding:
    prefix: --gtf
- id: agat_sp_kraken_assess_lift_coverage
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_sp_kraken_assess_liftover.pl
