class: CommandLineTool
id: basename.cwl
inputs:
- id: in_multiple
  doc: support multiple arguments and treat each as a NAME
  type: boolean?
  inputBinding:
    prefix: --multiple
- id: in_remove_trailing_suffix
  doc: remove a trailing SUFFIX; implies -a
  type: string?
  inputBinding:
    prefix: --suffix
- id: in_end_output_line
  doc: end each output line with NUL, not newline
  type: boolean?
  inputBinding:
    prefix: --zero
- id: in_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_4
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- basename
