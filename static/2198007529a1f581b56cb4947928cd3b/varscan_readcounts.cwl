class: CommandLineTool
id: varscan_readcounts.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- varscan
- readcounts
