class: CommandLineTool
id: fetchproks.sh.cwl
inputs:
- id: in_url
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_outfile
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fetchproks.sh
