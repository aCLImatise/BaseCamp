class: CommandLineTool
id: sketchy_list_OPTIONS.cwl
inputs:
- id: path
  doc: Path to sketchy home directory [~/.sketchy]
  type: File
  inputBinding:
    prefix: --path
outputs: []
cwlVersion: v1.1
baseCommand:
- sketchy
- list
- OPTIONS
