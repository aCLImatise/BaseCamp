class: CommandLineTool
id: crux_percolator_0..cwl
inputs:
- id: in_crux
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_percolator
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_peptide_spectrum_matches
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- crux
- percolator
- '0.'
