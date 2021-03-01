class: CommandLineTool
id: fuma_list_to_boolean_list.cwl
inputs:
- id: in_false_value
  doc: output filename; '-' for stdout
  type: File?
  inputBinding:
    prefix: --false_value
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_false_value
  doc: output filename; '-' for stdout
  type: File?
  outputBinding:
    glob: $(inputs.in_false_value)
hints: []
cwlVersion: v1.1
baseCommand:
- fuma-list-to-boolean-list
