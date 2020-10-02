class: CommandLineTool
id: mdpocket.cwl
inputs:
- id: in_trajectory_format
  doc: format
  type: string
  inputBinding:
    prefix: --trajectory_format
- id: in_pdb_file
  doc: PDB file
  type: File
  inputBinding:
    prefix: -f
- id: in_topology_file
  doc: "--topology_format topology_format (currently only prmtop is supported)\n-x\
    \ set this flag to perform interaction energy grid calculations"
  type: File
  inputBinding:
    prefix: --topology_file
- id: in_output_prefix
  doc: ': specify the prefix of all output files here'
  type: string
  inputBinding:
    prefix: --output_prefix
- id: in_drug_g_ability_score
  doc: ': put this flag to score pockets by druggability'
  type: boolean
  inputBinding:
    prefix: --druggability_score
- id: in_netcdf
  doc: '(netcdf)         '
  type: string
  inputBinding:
    position: 0
- id: in_dcd
  doc: '(dcd)        '
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mdpocket
