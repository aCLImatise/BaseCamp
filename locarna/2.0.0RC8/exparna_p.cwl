class: CommandLineTool
id: exparna_p.cwl
inputs:
- id: input_1
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_2
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: verbose
  doc: Verbose
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: Quiet
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_exact_struct_match
  doc: Allow inexact structure matches
  type: boolean
  inputBinding:
    prefix: --inexact-struct-match
- id: add_filter
  doc: Apply an additional filter to enumerate only EPMs that are maximally extended
    (only inexact)
  type: boolean
  inputBinding:
    prefix: --add-filter
- id: no_chaining
  doc: Do not use the chaining algorithm to find best overall chain
  type: boolean
  inputBinding:
    prefix: --no-chaining
- id: relaxed_anchors
  doc: Relax anchor constraints (default=off)
  type: boolean
  inputBinding:
    prefix: --relaxed-anchors
- id: stopwatch
  doc: Print run time information.
  type: boolean
  inputBinding:
    prefix: --stopwatch
outputs: []
cwlVersion: v1.1
baseCommand:
- exparna_p
