class: CommandLineTool
id: rsat_rescan_matrix.cwl
inputs:
- id: in_iterations
  doc: ) of site detection <-> matrix building. The process stops at
  type: boolean
  inputBinding:
    prefix: -iterations
- id: in_rescan_matrix
  doc: "\e[1mVERSION\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_jacques_dot_van_helden_backslash_at_univ_am_udot_fr
  doc: "\e[1mCATEGORY\e[0m"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rsat
- rescan-matrix
