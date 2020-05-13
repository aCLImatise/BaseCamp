class: CommandLineTool
id: locarna_p.cwl
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
  doc: Be verbose. Prints input parameters, sequences and size information.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: Be quiet.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: extended_pf
  doc: Use extended precision for partition function values. This increases run-time
    and space (less than 2x), however enables handling significantly larger instances.
  type: boolean
  inputBinding:
    prefix: --extended-pf
- id: quad_pf
  doc: Use quad precision for partition function values. Even more precision than
    extended pf, but usually much slower (overrides extended-pf).
  type: boolean
  inputBinding:
    prefix: --quad-pf
- id: include_am_in_bm
  doc: Include arc match cases in base match probabilities
  type: boolean
  inputBinding:
    prefix: --include-am-in-bm
- id: stopwatch
  doc: Print run time informations.
  type: boolean
  inputBinding:
    prefix: --stopwatch
- id: relaxed_anchors
  doc: Use relaxed semantics of anchor constraints [default=strict semantics].
  type: boolean
  inputBinding:
    prefix: --relaxed-anchors
outputs: []
cwlVersion: v1.1
baseCommand:
- locarna_p
