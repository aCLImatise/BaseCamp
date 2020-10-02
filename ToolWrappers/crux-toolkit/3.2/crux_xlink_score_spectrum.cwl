class: CommandLineTool
id: crux_xlink_score_spectrum.cwl
inputs:
- id: in_peptide_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_peptide_b
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_pos_a
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_pos_b
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_link_mass
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_charge_state
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_scan_number
  doc: ''
  type: long
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- crux
- xlink-score-spectrum
