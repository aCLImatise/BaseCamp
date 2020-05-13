class: CommandLineTool
id: crux_xlink_score_spectrum_peptide A_peptide B_pos A_pos B_link mass_scan number.cwl
inputs:
- id: charge_state
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: scan_number
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: ms2_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- xlink-score-spectrum
- peptide A
- peptide B
- pos A
- pos B
- link mass
- scan number
