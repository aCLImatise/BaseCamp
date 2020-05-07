class: CommandLineTool
id: crux_xlink_assign_ions_peptide A_peptide B_pos A_pos B_link mass_charge state_ms2
  file.cwl
inputs:
- id: scan_number
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ms2_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- xlink-assign-ions
- peptide A
- peptide B
- pos A
- pos B
- link mass
- charge state
- ms2 file
