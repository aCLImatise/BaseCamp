class: CommandLineTool
id: coverm_shell_completion_FLAGS.cwl
inputs:
- id: in_output_file
  doc: ''
  type: File
  inputBinding:
    prefix: --output-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- coverm
- shell-completion
- FLAGS
