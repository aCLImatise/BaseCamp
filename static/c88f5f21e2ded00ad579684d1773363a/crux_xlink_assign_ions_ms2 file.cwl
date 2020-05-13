class: CommandLineTool
id: crux_xlink_assign_ions_ms2 file.cwl
inputs:
- id: peptide_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: peptide_b
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: pos_a
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: posb
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: link_mass
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: charge_state
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: scan_number
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: ms2_file
  doc: ''
  type: string
  inputBinding:
    position: 7
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- xlink-assign-ions
- ms2 file
