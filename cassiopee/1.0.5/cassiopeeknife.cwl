class: CommandLineTool
id: cassiopeeknife.cwl
inputs:
- id: s
  doc: ': sequence to convert'
  type: boolean
  inputBinding:
    prefix: -s
- id: o
  doc: ': output file'
  type: boolean
  inputBinding:
    prefix: -o
- id: v
  doc: ': show version'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- cassiopeeknife
