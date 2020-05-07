class: CommandLineTool
id: fdolpenny.cwl
inputs:
- id: weights
  doc: properties Weights file
  type: boolean
  inputBinding:
    prefix: -weights
- id: anc_file
  doc: properties Ancestral states file
  type: boolean
  inputBinding:
    prefix: -ancfile
- id: do_threshold
  doc: toggle     [N] Use threshold parsimony
  type: boolean
  inputBinding:
    prefix: -dothreshold
outputs: []
cwlVersion: v1.1
baseCommand:
- fdolpenny
