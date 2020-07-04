class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/run_rcorrector.pl.cwl
inputs:
- id: comma_separated_files
  doc: ': comma separated files for single-end data sets'
  type: string
  inputBinding:
    prefix: -s
- id: comma_separated_first
  doc: ': comma separated files for the first mate in the paried-end data sets'
  type: string
  inputBinding:
    prefix: '-1'
- id: comma_separated_second
  doc: ': comma separated files for the second mate in the paired-end data sets'
  type: string
  inputBinding:
    prefix: '-2'
- id: comma_sperated_files
  doc: ': comma sperated files for interleaved paired-end data sets'
  type: string
  inputBinding:
    prefix: -i
- id: perl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- run_rcorrector.pl
