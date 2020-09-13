class: CommandLineTool
id: ../../../fuma_list_to_boolean_list.cwl
inputs:
- id: in_true_value
  doc: ''
  type: string
  inputBinding:
    prefix: --true_value
- id: in_false_value
  doc: ''
  type: string
  inputBinding:
    prefix: --false_value
- id: in_output
  doc: output filename; '-' for stdout
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output filename; '-' for stdout
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- fuma-list-to-boolean-list
