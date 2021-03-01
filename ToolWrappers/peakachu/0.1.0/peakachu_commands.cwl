class: CommandLineTool
id: peakachu_commands.cwl
inputs:
- id: in_peak_a_chu
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- peakachu
- commands
