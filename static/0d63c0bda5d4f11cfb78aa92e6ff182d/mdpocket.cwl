class: CommandLineTool
id: mdpocket.cwl
inputs:
- id: in_trajectory_format
  doc: PDB file
  type: File?
  inputBinding:
    prefix: --trajectory_format
- id: in_f
  doc: PDB file
  type: File?
  inputBinding:
    prefix: -f
- id: in_topology_format
  doc: (currently only prmtop is supported)
  type: File?
  inputBinding:
    prefix: --topology_format
- id: in_flag_perform_calculations
  doc: this flag to perform interaction energy grid calculations
  type: string?
  inputBinding:
    prefix: -x
- id: in_output_prefix
  doc: ': specify the prefix of all output files here'
  type: string?
  inputBinding:
    prefix: --output_prefix
- id: in_drug_g_ability_score
  doc: ': put this flag to score pockets by druggability'
  type: boolean?
  inputBinding:
    prefix: --druggability_score
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fpocket:3.1.4.2
cwlVersion: v1.1
baseCommand:
- mdpocket
