class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/basename.cwl
inputs:
- id: multiple
  doc: support multiple arguments and treat each as a NAME
  type: boolean
  inputBinding:
    prefix: --multiple
- id: remove_trailing_suffix
  doc: remove a trailing SUFFIX; implies -a
  type: string
  inputBinding:
    prefix: --suffix
- id: end_output_line
  doc: end each output line with NUL, not newline
  type: boolean
  inputBinding:
    prefix: --zero
- id: name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: var_4
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- basename
