class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/lamassemble.cwl
inputs:
- id: number_parallel_threads
  doc: number of parallel threads (default=1)
  type: string
  inputBinding:
    prefix: -P
- id: use_minimum_positions
  doc: use minimum positions in length-W windows (default=19)
  type: string
  inputBinding:
    prefix: -W
- id: max_initial_matches
  doc: max initial matches per query position (default=5)
  type: string
  inputBinding:
    prefix: -m
- id: max_gap_length
  doc: max gap length (default=30)
  type: string
  inputBinding:
    prefix: -z
- id: last_train_dot_out
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sequences_dot_fx
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- lamassemble
