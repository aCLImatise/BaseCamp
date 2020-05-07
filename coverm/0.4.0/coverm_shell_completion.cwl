class: CommandLineTool
id: coverm_shell_completion.cwl
inputs:
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: ''
  type: string
  inputBinding:
    prefix: --output-file
- id: shell
  doc: ''
  type: string
  inputBinding:
    prefix: --shell
outputs: []
cwlVersion: v1.1
baseCommand:
- coverm
- shell-completion
