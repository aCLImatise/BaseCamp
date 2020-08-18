class: CommandLineTool
id: ../../../indexer.cwl
inputs:
- id: skip_skip_junk
  doc: '|skip      skip junk [1]'
  type: boolean
  inputBinding:
    prefix: -s
- id: tail_tail_pattern
  doc: '|tail      tail pattern [^>]'
  type: boolean
  inputBinding:
    prefix: -t
- id: included_tail_pattern
  doc: '|included  tail pattern is part of entry [0]'
  type: boolean
  inputBinding:
    prefix: -i
- id: pattern_i_pattern
  doc: '|pattern   id selection pattern [^>[^|]+\|([^\s|;]+)]'
  type: boolean
  inputBinding:
    prefix: -p
- id: multiple_indices_entry
  doc: multiple indices per entry [0]
  type: boolean
  inputBinding:
    prefix: -m
- id: idlength_maximum_length
  doc: '|idLength  maximum id length [14]'
  type: boolean
  inputBinding:
    prefix: -l
- id: lp
  doc: maximum position length [10]
  type: boolean
  inputBinding:
    prefix: -lp
- id: ll
  doc: maximum size length [6]
  type: boolean
  inputBinding:
    prefix: -ll
outputs: []
cwlVersion: v1.1
baseCommand:
- indexer
