class: CommandLineTool
id: ../../../fmt.cwl
inputs:
- id: crown_margin
  doc: indentation of first two lines
  type: string
  inputBinding:
    prefix: --crown-margin
- id: prefix
  doc: reformat only lines beginning with STRING, reattaching the prefix to reformatted
    lines
  type: string
  inputBinding:
    prefix: --prefix
- id: split_only
  doc: long lines, but do not refill
  type: string
  inputBinding:
    prefix: --split-only
- id: tagged_paragraph
  doc: indentation of first line different from second
  type: boolean
  inputBinding:
    prefix: --tagged-paragraph
- id: uniform_spacing
  doc: one space between words, two after sentences
  type: boolean
  inputBinding:
    prefix: --uniform-spacing
- id: maximum_line_width
  doc: maximum line width (default of 75 columns)
  type: string
  inputBinding:
    prefix: --width
- id: goal
  doc: goal width (default of 93% of width)
  type: string
  inputBinding:
    prefix: --goal
- id: var_7
  doc: ''
  type: boolean
  inputBinding:
    prefix: -WIDTH
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fmt
