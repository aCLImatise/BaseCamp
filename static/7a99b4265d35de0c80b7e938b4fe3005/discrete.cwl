class: CommandLineTool
id: discrete.cwl
inputs:
- id: in_param__settings
  doc: param          Settings
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_pdb_in
  doc: raw PDB file   Initial PDB
  type: boolean?
  inputBinding:
    prefix: -pdbin
- id: in_ener
  doc: energy         Energies
  type: boolean?
  inputBinding:
    prefix: -ener
- id: in_trj
  doc: trajectory.pdb Trajectory (PDB)
  type: boolean?
  inputBinding:
    prefix: -trj
- id: in_pdb_targ
  doc: target.pdb     Target PDB
  type: boolean?
  inputBinding:
    prefix: -pdbtarg
- id: in_log_calculation_log
  doc: log            Calculation Log
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_p_one
  doc: same.dat       Table of same residues
  type: boolean?
  inputBinding:
    prefix: -p1
- id: in_p_two
  doc: sametarget.dat Table of same residues target
  type: boolean?
  inputBinding:
    prefix: -p2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/godmd:1.0.0--hfad81c2_0
cwlVersion: v1.1
baseCommand:
- discrete
