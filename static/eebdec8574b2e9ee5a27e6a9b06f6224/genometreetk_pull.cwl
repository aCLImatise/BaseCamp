class: CommandLineTool
id: ../../../genometreetk_pull.cwl
inputs:
- id: no_validation
  doc: do not assume decorated nodes adhear to standard taxonomy
  type: boolean
  inputBinding:
    prefix: --no_validation
- id: silent
  doc: suppress output
  type: boolean
  inputBinding:
    prefix: --silent
- id: input_tree
  doc: decorated tree
  type: string
  inputBinding:
    position: 0
- id: output_taxonomy
  doc: output taxonomy file
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- genometreetk
- pull
