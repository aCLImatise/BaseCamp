class: CommandLineTool
id: ../../../crux_percolator.cwl
inputs:
- id: peptide_spectrum_matches
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- percolator
