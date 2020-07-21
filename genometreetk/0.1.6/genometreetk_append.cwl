class: CommandLineTool
id: ../../../genometreetk_append.cwl
inputs:
- id: silent
  doc: suppress output
  type: boolean
  inputBinding:
    prefix: --silent
- id: input_tree
  doc: input tree to decorate
  type: string
  inputBinding:
    position: 0
- id: input_taxonomy
  doc: input taxonomy file
  type: string
  inputBinding:
    position: 1
- id: output_tree
  doc: output tree with taxonomy appended to extant taxon labels
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- genometreetk
- append
