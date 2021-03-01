class: CommandLineTool
id: fastq_clipper.cwl
inputs:
- id: in_output_file_stats
  doc: Output file (stats to stdout)
  type: File?
  inputBinding:
    prefix: -o
- id: in_maximum_difference_percentage
  doc: Maximum difference percentage (10)
  type: long?
  inputBinding:
    prefix: -p
- id: in_minimum_clip_length
  doc: Minimum clip length (1)
  type: long?
  inputBinding:
    prefix: -m
- id: in_minimum_remaining_sequence
  doc: Minimum remaining sequence length (15)
  type: long?
  inputBinding:
    prefix: -l
- id: in_extra_match_length
  doc: "[N]  Extra match length past adapter length,\nN =-1 : search all\nN = 0 :\
    \ search only up to adapter length"
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_endofline_default
  doc: End-of-line (default)
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_beginningofline_supported_yet
  doc: Beginning-of-line (not supported yet)
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_fast_q_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_adapters
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_stats
  doc: Output file (stats to stdout)
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_stats)
hints: []
cwlVersion: v1.1
baseCommand:
- fastq-clipper
