class: CommandLineTool
id: crux_xlink_score_spectrum_peptide A_peptide B_scan number.cwl
inputs:
- id: pos_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: posb
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: link_mass
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: charge_state
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: scan_number
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: ms2_file
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- xlink-score-spectrum
- peptide A
- peptide B
- scan number
