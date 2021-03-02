class: CommandLineTool
id: mafMeFirst.cwl
inputs:
- id: in_in_dot_maf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_me_dot_list
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
- mafMeFirst
