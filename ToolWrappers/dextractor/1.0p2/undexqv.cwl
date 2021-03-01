class: CommandLineTool
id: undexqv.cwl
inputs:
- id: in_v_ku
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -vkU
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- undexqv
