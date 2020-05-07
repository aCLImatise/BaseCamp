class: CommandLineTool
id: crux_xlink_assign_ions_peptide A_peptide B_pos A_charge state.cwl
inputs:
- id: posb
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: link_mass
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: charge_state
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: scan_number
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: ms2_file
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- xlink-assign-ions
- peptide A
- peptide B
- pos A
- charge state
