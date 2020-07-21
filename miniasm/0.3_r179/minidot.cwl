class: CommandLineTool
id: ../../../minidot.cwl
inputs:
- id: min_match_length
  doc: min match length [100]
  type: long
  inputBinding:
    prefix: -m
- id: min_identity
  doc: min identity [0.10]
  type: double
  inputBinding:
    prefix: -i
- id: min_span
  doc: min span [1000]
  type: long
  inputBinding:
    prefix: -s
- id: image_width
  doc: image width [600]
  type: long
  inputBinding:
    prefix: -w
- id: font_size
  doc: font size [11]
  type: long
  inputBinding:
    prefix: -f
- id: do_print_labels
  doc: don't print labels
  type: boolean
  inputBinding:
    prefix: -L
- id: try_put_hits
  doc: don't try to put hits onto the diagonal
  type: boolean
  inputBinding:
    prefix: -D
- id: in_dot_paf
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- minidot
