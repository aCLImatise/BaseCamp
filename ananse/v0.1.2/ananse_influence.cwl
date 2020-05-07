class: CommandLineTool
id: ananse_influence.cwl
inputs:
- id: b_network
  doc: network in first cell
  type: File
  inputBinding:
    prefix: --bnetwork
- id: n_core
  doc: Number of core used
  type: string
  inputBinding:
    prefix: --ncore
- id: a_network
  doc: network in second cell
  type: File
  inputBinding:
    prefix: --anetwork
- id: expression
  doc: Expression scores in first cell
  type: File
  inputBinding:
    prefix: --expression
- id: edges
  doc: Number of top edges used
  type: string
  inputBinding:
    prefix: --edges
- id: de_genes
  doc: DE genes file
  type: File
  inputBinding:
    prefix: --degenes
- id: outfile
  doc: Output file
  type: File
  inputBinding:
    prefix: --outfile
- id: plot
  doc: Plot influence, True or False, input should be either 'True' or 'False'.
  type: string
  inputBinding:
    prefix: --plot
outputs: []
cwlVersion: v1.1
baseCommand:
- ananse
- influence
