class: CommandLineTool
id: varscan_readcounts.cwl
inputs:
- id: in_variants_file
  doc: list of variants at which to report readcounts
  type: File?
  inputBinding:
    prefix: --variants-file
- id: in_output_file
  doc: Output file to contain the readcounts
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_min_coverage
  doc: Minimum read depth at a position to make a call [1]
  type: boolean?
  inputBinding:
    prefix: --min-coverage
- id: in_min_base_qual
  doc: base quality at a position to count a read [20]
  type: long?
  inputBinding:
    prefix: --min-base-qual
- id: in_jar
  doc: ''
  type: string?
  inputBinding:
    prefix: -jar
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_read_counts
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_pile_up
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: Output file to contain the readcounts
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- varscan
- readcounts
