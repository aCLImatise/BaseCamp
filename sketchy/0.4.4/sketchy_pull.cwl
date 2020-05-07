class: CommandLineTool
id: sketchy_pull.cwl
inputs:
- id: path
  doc: Path to sketchy home directory [~/.sketchy ]
  type: File
  inputBinding:
    prefix: --path
- id: full
  doc: Pull the full default sketch collections [false]
  type: boolean
  inputBinding:
    prefix: --full
outputs: []
cwlVersion: v1.1
baseCommand:
- sketchy
- pull
