class: CommandLineTool
id: fmt.cwl
inputs:
- id: in_crown_margin
  doc: preserve indentation of first two lines
  type: boolean?
  inputBinding:
    prefix: --crown-margin
- id: in_prefix
  doc: "reformat only lines beginning with STRING,\nreattaching the prefix to reformatted\
    \ lines"
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_split_only
  doc: split long lines, but do not refill
  type: boolean?
  inputBinding:
    prefix: --split-only
- id: in_tagged_paragraph
  doc: indentation of first line different from second
  type: boolean?
  inputBinding:
    prefix: --tagged-paragraph
- id: in_uniform_spacing
  doc: one space between words, two after sentences
  type: boolean?
  inputBinding:
    prefix: --uniform-spacing
- id: in_maximum_line_width
  doc: maximum line width (default of 75 columns)
  type: long?
  inputBinding:
    prefix: --width
- id: in_goal
  doc: goal width (default of 93% of width)
  type: long?
  inputBinding:
    prefix: --goal
- id: in_var_7
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -WIDTH
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fmt
