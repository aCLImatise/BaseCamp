class: CommandLineTool
id: qacToWig.cwl
inputs:
- id: name
  doc: restrict output to just this sequence name
  type: string
  inputBinding:
    prefix: -name
- id: fixed
  doc: output single file with wig headers and fixed step size
  type: boolean
  inputBinding:
    prefix: -fixed
outputs: []
cwlVersion: v1.1
baseCommand:
- qacToWig
