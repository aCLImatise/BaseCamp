class: CommandLineTool
id: sketchy_list.cwl
inputs:
- id: in_path
  doc: Path to sketchy home directory [~/.sketchy]
  type: File?
  inputBinding:
    prefix: --path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sketchy
- list
