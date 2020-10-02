class: CommandLineTool
id: brassI_np_in.pl.cwl
inputs:
- id: in_at
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
- brassI_np_in.pl
