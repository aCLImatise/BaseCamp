class: CommandLineTool
id: aws_zsh_completer.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- aws_zsh_completer.sh
