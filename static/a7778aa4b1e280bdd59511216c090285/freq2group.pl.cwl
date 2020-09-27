class: CommandLineTool
id: freq2group.pl.cwl
inputs:
- id: in_freq
  doc: Bin     Count
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- freq2group.pl
