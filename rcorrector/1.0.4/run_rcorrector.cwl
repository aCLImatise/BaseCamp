class: CommandLineTool
id: run_rcorrector.pl.cwl
inputs:
- id: i
  doc: ': comma sperated files for interleaved paired-end data sets'
  type: string
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- run_rcorrector.pl
