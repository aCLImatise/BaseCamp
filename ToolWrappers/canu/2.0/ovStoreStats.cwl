class: CommandLineTool
id: ovStoreStats.cwl
inputs:
- id: in_expect_coverage_mean
  doc: Expect coverage at mean (below 1/3 this is 'low coverage', above 5/3 is 'repeat')
  type: long?
  inputBinding:
    prefix: -C
- id: in_write_stats_stdout
  doc: Write stats to stdout, not to a file
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_report_processing_speed
  doc: Report processing speed to stderr
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_e
  doc: ''
  type: string?
  inputBinding:
    prefix: -e
- id: in_b
  doc: ''
  type: string?
  inputBinding:
    prefix: -b
- id: in_var_5
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_var_6
  doc: ''
  type: string?
  inputBinding:
    prefix: -O
- id: in_s
  doc: ''
  type: string?
  inputBinding:
    prefix: -S
- id: in_out_prefix_dot_per_read_dot_log
  doc: One line per read, giving readID, read length and classification.
  type: string
  inputBinding:
    position: 0
- id: in_out_prefix_dot_summary
  doc: The primary statistical output.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ovStoreStats
