class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/cpptraj_rmsf.cwl
inputs:
- id: config
  doc: Configuration file
  type: string
  inputBinding:
    prefix: --config
- id: input_exp_path
  doc: Path to the experimental reference file (required if reference = experimental).
  type: string
  inputBinding:
    prefix: --input_exp_path
- id: input_top_path
  doc: 'Path to the input structure or topology file. Accepted formats: top, pdb,
    prmtop, parmtop, zip.'
  type: string
  inputBinding:
    prefix: --input_top_path
- id: input_t_raj_path
  doc: 'Path to the input trajectory to be processed. Accepted formats: crd, cdf,
    netcdf, restart, ncrestart, restartnc, dcd, charmm, cor, pdb, mol2, trr, gro,
    binpos, xtc, cif, arc, sqm, sdf, conflib.'
  type: string
  inputBinding:
    prefix: --input_traj_path
- id: output_c_ppt_raj_path
  doc: Path to the output processed analysis.
  type: string
  inputBinding:
    prefix: --output_cpptraj_path
outputs: []
cwlVersion: v1.1
baseCommand:
- cpptraj_rmsf
