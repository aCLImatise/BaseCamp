class: CommandLineTool
id: mergeRanges.cwl
inputs:
- id: in_path_sequence_store
  doc: Path to the sequence store
  type: File
  inputBinding:
    prefix: -S
- id: in_bgn_end_path
  doc: "<bgn> <end>  Path to the file of clear ranges,\nalong with the (inclusive)\
    \ range of\nread IDs that have clear ranges set"
  type: File
  inputBinding:
    prefix: -c
- id: in_path_output_ranges
  doc: Path to output clear ranges.
  type: File
  inputBinding:
    prefix: -o
- id: in_report_range_changes
  doc: Report clear range changes to stderr
  type: boolean
  inputBinding:
    prefix: -v
- id: in_end_id
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_clear_range_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_path_output_ranges
  doc: Path to output clear ranges.
  type: File
  outputBinding:
    glob: $(inputs.in_path_output_ranges)
cwlVersion: v1.1
baseCommand:
- mergeRanges
