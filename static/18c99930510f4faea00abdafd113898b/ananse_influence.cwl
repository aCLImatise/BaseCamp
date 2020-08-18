class: CommandLineTool
id: ../../../ananse_influence.cwl
inputs:
- id: target
  doc: network in second cell
  type: File
  inputBinding:
    prefix: --target
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
- id: source
  doc: network in first cell
  type: File
  inputBinding:
    prefix: --source
- id: edges
  doc: Number of top edges used
  type: string
  inputBinding:
    prefix: --edges
- id: expression
  doc: Expression scores in first cell
  type: File
  inputBinding:
    prefix: --expression
- id: plot
  doc: Create influence score plot.
  type: boolean
  inputBinding:
    prefix: --plot
- id: n_core
  doc: Number of core used
  type: string
  inputBinding:
    prefix: --ncore
- id: an_anse
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: subcommand
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: influence
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- ananse
- influence
