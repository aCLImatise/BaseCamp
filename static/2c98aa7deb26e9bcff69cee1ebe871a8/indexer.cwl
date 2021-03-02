class: CommandLineTool
id: indexer.cwl
inputs:
- id: in_skip_skip_junk
  doc: '|skip      skip junk [1]'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_tail_tail_pattern
  doc: '|tail      tail pattern [^>]'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_included_tail_pattern
  doc: '|included  tail pattern is part of entry [0]'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_pattern_d_pattern
  doc: '|pattern   id selection pattern [^>[^|]+\|([^\s|;]+)]'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_multiple_indices_entry
  doc: multiple indices per entry [0]
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_idlength_maximum_i
  doc: '|idLength  maximum id length [14]'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_lp
  doc: maximum position length [10]
  type: boolean?
  inputBinding:
    prefix: -lp
- id: in_ll
  doc: maximum size length [6]
  type: boolean?
  inputBinding:
    prefix: -ll
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- indexer
