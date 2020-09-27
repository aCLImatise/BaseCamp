class: CommandLineTool
id: cpptraj_bfactor.cwl
inputs:
- id: in_config
  doc: Configuration file
  type: File
  inputBinding:
    prefix: --config
- id: in_input_exp_path
  doc: Path to the experimental reference file (required if reference = experimental).
  type: File
  inputBinding:
    prefix: --input_exp_path
- id: in_input_top_path
  doc: 'Path to the input structure or topology file. Accepted formats: top, pdb,
    prmtop, parmtop, zip.'
  type: File
  inputBinding:
    prefix: --input_top_path
- id: in_input_t_raj_path
  doc: 'Path to the input trajectory to be processed. Accepted formats: crd, cdf,
    netcdf, restart, ncrestart, restartnc, dcd, charmm, cor, pdb, mol2, trr, gro,
    binpos, xtc, cif, arc, sqm, sdf, conflib.'
  type: File
  inputBinding:
    prefix: --input_traj_path
- id: in_output_c_ppt_raj_path
  doc: "Path to the output processed analysis.\n"
  type: File
  inputBinding:
    prefix: --output_cpptraj_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_c_ppt_raj_path
  doc: "Path to the output processed analysis.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output_c_ppt_raj_path)
cwlVersion: v1.1
baseCommand:
- cpptraj_bfactor
