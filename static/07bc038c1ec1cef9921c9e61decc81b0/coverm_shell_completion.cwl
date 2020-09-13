class: CommandLineTool
id: ../../../coverm_shell_completion.cwl
inputs:
- id: in_quiet
  doc: ''
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: ''
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_output_file
  doc: ''
  type: File
  inputBinding:
    prefix: --output-file
- id: in_shell
  doc: '[possible values: zsh, bash, fish, powershell, elvish]'
  type: string
  inputBinding:
    prefix: --shell
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
