class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sdrmsd.cwl
inputs:
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
- id: reference_dots_df
  doc: SDF file with the reference molecule.
  type: string
  inputBinding:
    position: 0
- id: input_dots_df
  doc: SDF file with the molecules to be compared to reference.
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- sdrmsd
