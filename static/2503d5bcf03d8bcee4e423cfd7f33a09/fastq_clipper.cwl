class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fastq_clipper.cwl
inputs:
- id: output_file_stats
  doc: Output file (stats to stdout)
  type: string
  inputBinding:
    prefix: -o
- id: maximum_difference_percentage
  doc: Maximum difference percentage (10)
  type: string
  inputBinding:
    prefix: -p
- id: minimum_clip_length
  doc: Minimum clip length (1)
  type: string
  inputBinding:
    prefix: -m
- id: minimum_remaining_sequence
  doc: Minimum remaining sequence length (15)
  type: string
  inputBinding:
    prefix: -l
- id: extra_match_length
  doc: '[N]  Extra match length past adapter length,  N =-1 : search all N = 0 : search
    only up to adapter length'
  type: boolean
  inputBinding:
    prefix: -x
- id: endofline_default
  doc: End-of-line (default)
  type: boolean
  inputBinding:
    prefix: -e
- id: beginningofline_supported_yet
  doc: Beginning-of-line (not supported yet)
  type: boolean
  inputBinding:
    prefix: -b
- id: fast_q_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: adapters
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq-clipper
