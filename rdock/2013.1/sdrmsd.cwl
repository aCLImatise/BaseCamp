class: CommandLineTool
id: sdrmsd.cwl
inputs:
- id: references_df
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: inputs_df
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: fit
  doc: Superpose molecules before RMSD calculation
  type: boolean
  inputBinding:
    prefix: --fit
- id: threshold
  doc: Discard poses with RMSD < THRESHOLD with respect previous poses which where
    not rejected based on same principle. A Population SDField will be added to output
    SD with the population number.
  type: string
  inputBinding:
    prefix: --threshold
- id: out
  doc: If declared, write an output SDF file with the input molecules with a new sdfield
    <RMSD>. If molecule was fitted, the fitted molecule coordinates will be saved.
  type: File
  inputBinding:
    prefix: --out
outputs: []
cwlVersion: v1.1
baseCommand:
- sdrmsd
