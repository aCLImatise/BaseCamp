class: CommandLineTool
id: FastTree.cwl
inputs:
- id: bio_nj
  doc: ': weighted joins as in BIONJ (default) FastTree will also weight joins during
    NNIs'
  type: boolean
  inputBinding:
    prefix: -bionj
- id: nj
  doc: ': regular (unweighted) neighbor-joining'
  type: boolean
  inputBinding:
    prefix: -nj
outputs: []
cwlVersion: v1.1
baseCommand:
- FastTree
