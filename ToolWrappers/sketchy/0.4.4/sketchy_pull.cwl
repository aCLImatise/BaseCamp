class: CommandLineTool
id: sketchy_pull.cwl
inputs:
- id: in_path
  doc: Path to sketchy home directory [~/.sketchy ]
  type: File?
  inputBinding:
    prefix: --path
- id: in_full
  doc: Pull the full default sketch collections [false]
  type: boolean?
  inputBinding:
    prefix: --full
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sketchy
- pull
