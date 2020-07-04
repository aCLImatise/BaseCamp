class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/coverm_shell_completion.cwl
inputs:
- id: output_file
  doc: '--shell <shell>                 [possible values: zsh, bash, fish, powershell,
    elvish]'
  type: string
  inputBinding:
    prefix: --output-file
- id: shell
  doc: ''
  type: string
  inputBinding:
    prefix: --shell
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- coverm
- shell-completion
