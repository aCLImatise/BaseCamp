class: CommandLineTool
id: ../../../ovStoreStats.cwl
inputs:
- id: expect_coverage_mean
  doc: Expect coverage at mean (below 1/3 this is 'low coverage', above 5/3 is 'repeat')
  type: string
  inputBinding:
    prefix: -C
- id: write_stats_stdout
  doc: Write stats to stdout, not to a file
  type: boolean
  inputBinding:
    prefix: -c
- id: report_processing_speed
  doc: Report processing speed to stderr
  type: boolean
  inputBinding:
    prefix: -v
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -S
- id: var_4
  doc: ''
  type: string
  inputBinding:
    prefix: -O
- id: var_5
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
- id: e
  doc: ''
  type: string
  inputBinding:
    prefix: -e
- id: out_prefix_dot_per_read_dot_log
  doc: One line per read, giving readID, read length and classification.
  type: string
  inputBinding:
    position: 0
- id: out_prefix_dot_summary
  doc: The primary statistical output.
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- ovStoreStats
