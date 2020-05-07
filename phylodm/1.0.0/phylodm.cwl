class: CommandLineTool
id: phylodm.cwl
inputs:
- id: newick
  doc: path to the newick file
  type: string
  inputBinding:
    position: 0
- id: method
  doc: use patristic distance {pd} or node distance {node}
  type: string
  inputBinding:
    position: 1
- id: output
  doc: path to output matrix
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- phylodm
