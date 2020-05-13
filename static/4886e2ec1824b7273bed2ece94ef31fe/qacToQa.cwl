class: CommandLineTool
id: qacToQa.cwl
inputs:
- id: name
  doc: restrict output to just this sequence name
  type: string
  inputBinding:
    prefix: -name
outputs: []
cwlVersion: v1.1
baseCommand:
- qacToQa
