class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/crux_xlink_assign_ions.cwl
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
- id: pos_b
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
- id: ms_two_file
  doc: ''
  type: string
  inputBinding:
    position: 7
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- xlink-assign-ions
