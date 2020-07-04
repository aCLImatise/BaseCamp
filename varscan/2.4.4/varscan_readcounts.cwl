class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/varscan_readcounts.cwl
inputs:
- id: variants_file
  doc: list of variants at which to report readcounts
  type: string
  inputBinding:
    prefix: --variants-file
- id: output_file
  doc: Output file to contain the readcounts
  type: boolean
  inputBinding:
    prefix: --output-file
- id: min_coverage
  doc: Minimum read depth at a position to make a call [1]
  type: boolean
  inputBinding:
    prefix: --min-coverage
- id: min_base_qual
  doc: base quality at a position to count a read [20]
  type: long
  inputBinding:
    prefix: --min-base-qual
- id: jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: read_counts
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: pile_up
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- varscan
- readcounts
