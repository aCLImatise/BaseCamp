class: CommandLineTool
id: icecreamgrader.sh.cwl
inputs:
- id: in_in
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
- icecreamgrader.sh
