class: CommandLineTool
id: bam2bedgraph.cwl
inputs:
- id: in_input
  doc: 'Path to bam/cram input file. [default: stdin]'
  type: boolean?
  inputBinding:
    prefix: --input
- id: in_output
  doc: 'File path for output. [default: stdout]'
  type: File?
  inputBinding:
    prefix: --output
- id: in_region
  doc: Region in bam to access.
  type: boolean?
  inputBinding:
    prefix: --region
- id: in_filter
  doc: Ignore reads with the filter flags [int].
  type: boolean?
  inputBinding:
    prefix: --filter
- id: in_filter_include
  doc: "[int]      SAM flags to include. [default: 0]\nN.B. if properly paired reads\
    \ are filtered for inclusion bam2bw will assume paired-end data\nand exclude any\
    \ proper-pair flagged reads not in F/R orientation.-a --overlap              \
    \     Use overlapping read check."
  type: boolean?
  inputBinding:
    prefix: --filter-include
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_cr_vertical_line_b
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_am
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'File path for output. [default: stdout]'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- bam2bedgraph
