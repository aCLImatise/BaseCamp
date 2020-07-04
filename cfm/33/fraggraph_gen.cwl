class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fraggraph_gen.cwl
inputs:
- id: smiles_or_inch_i_string
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: max_depth
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fraggraph-gen
