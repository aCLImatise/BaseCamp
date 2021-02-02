class: CommandLineTool
id: minidot.cwl
inputs:
- id: in_min_match_length
  doc: min match length [100]
  type: long
  inputBinding:
    prefix: -m
- id: in_min_identity
  doc: min identity [0.10]
  type: double
  inputBinding:
    prefix: -i
- id: in_min_span
  doc: min span [1000]
  type: long
  inputBinding:
    prefix: -s
- id: in_image_width
  doc: image width [600]
  type: long
  inputBinding:
    prefix: -w
- id: in_font_size
  doc: font size [11]
  type: long
  inputBinding:
    prefix: -f
- id: in_do_print_labels
  doc: don't print labels
  type: boolean
  inputBinding:
    prefix: -L
- id: in_try_put_hits
  doc: don't try to put hits onto the diagonal
  type: boolean
  inputBinding:
    prefix: -D
- id: in_in_dot_paf
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- minidot
