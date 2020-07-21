class: CommandLineTool
id: ../../../mkbitmap.cwl
inputs:
- id: license
  doc: '- print license info and exit'
  type: boolean
  inputBinding:
    prefix: --license
- id: output
  doc: '- output to file'
  type: File
  inputBinding:
    prefix: --output
- id: no_defaults
  doc: '- turn off default options'
  type: boolean
  inputBinding:
    prefix: --nodefaults
- id: invert
  doc: "- invert the input (undo 'blackboard' effect)"
  type: boolean
  inputBinding:
    prefix: --invert
- id: filter
  doc: '- apply highpass filter with radius n (default 4)'
  type: string
  inputBinding:
    prefix: --filter
- id: no_filter
  doc: '- no highpass filtering'
  type: boolean
  inputBinding:
    prefix: --nofilter
- id: blur
  doc: '- apply lowpass filter with radius n (default: none)'
  type: string
  inputBinding:
    prefix: --blur
- id: scale
  doc: '- scale by integer factor n (default 2)'
  type: string
  inputBinding:
    prefix: --scale
- id: linear
  doc: '- use linear interpolation'
  type: boolean
  inputBinding:
    prefix: --linear
- id: cubic
  doc: '- use cubic interpolation (default)'
  type: boolean
  inputBinding:
    prefix: --cubic
- id: threshold
  doc: '- set threshold for bilevel conversion (default 0.45)'
  type: string
  inputBinding:
    prefix: --threshold
- id: grey
  doc: '- no bilevel conversion, output a greymap'
  type: boolean
  inputBinding:
    prefix: --grey
- id: file_dot_dot_dot
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mkbitmap
