class: CommandLineTool
id: mkbitmap.cwl
inputs:
- id: in_license
  doc: '- print license info and exit'
  type: boolean
  inputBinding:
    prefix: --license
- id: in_output
  doc: '- output to file'
  type: File
  inputBinding:
    prefix: --output
- id: in_no_defaults
  doc: '- turn off default options'
  type: boolean
  inputBinding:
    prefix: --nodefaults
- id: in_invert
  doc: "- invert the input (undo 'blackboard' effect)"
  type: boolean
  inputBinding:
    prefix: --invert
- id: in_filter
  doc: '- apply highpass filter with radius n (default 4)'
  type: long
  inputBinding:
    prefix: --filter
- id: in_no_filter
  doc: '- no highpass filtering'
  type: boolean
  inputBinding:
    prefix: --nofilter
- id: in_blur
  doc: '- apply lowpass filter with radius n (default: none)'
  type: string
  inputBinding:
    prefix: --blur
- id: in_scale
  doc: '- scale by integer factor n (default 2)'
  type: long
  inputBinding:
    prefix: --scale
- id: in_linear
  doc: '- use linear interpolation'
  type: boolean
  inputBinding:
    prefix: --linear
- id: in_cubic
  doc: '- use cubic interpolation (default)'
  type: boolean
  inputBinding:
    prefix: --cubic
- id: in_threshold
  doc: '- set threshold for bilevel conversion (default 0.45)'
  type: double
  inputBinding:
    prefix: --threshold
- id: in_grey
  doc: '- no bilevel conversion, output a greymap'
  type: boolean
  inputBinding:
    prefix: --grey
- id: in_file_dot_dot_dot
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: '- output to file'
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- mkbitmap
