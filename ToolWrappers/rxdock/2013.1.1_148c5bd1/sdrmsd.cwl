class: CommandLineTool
id: sdrmsd.cwl
inputs:
- id: in_fit
  doc: Superpose molecules before RMSD calculation
  type: boolean
  inputBinding:
    prefix: --fit
- id: in_threshold
  doc: "Discard poses with RMSD < THRESHOLD with respect\nprevious poses which where\
    \ not rejected based on same\nprinciple. A Population SDField will be added to\n\
    output SD with the population number."
  type: long
  inputBinding:
    prefix: --threshold
- id: in_out
  doc: "If declared, write an output SDF file with the input\nmolecules with a new\
    \ sdfield <RMSD>. If molecule was\nfitted, the fitted molecule coordinates will\
    \ be saved."
  type: File
  inputBinding:
    prefix: --out
- id: in_reference_dots_df
  doc: SDF file with the reference molecule.
  type: string
  inputBinding:
    position: 0
- id: in_input_dots_df
  doc: SDF file with the molecules to be compared to reference.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sdrmsd
