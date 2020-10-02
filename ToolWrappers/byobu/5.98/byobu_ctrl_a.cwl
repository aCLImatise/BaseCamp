class: CommandLineTool
id: byobu_ctrl_a.cwl
inputs:
- id: in_mode
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- byobu-ctrl-a
