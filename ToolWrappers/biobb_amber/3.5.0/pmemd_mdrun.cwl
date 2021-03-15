class: CommandLineTool
id: pmemd_mdrun.cwl
inputs:
- id: in_config
  doc: Configuration file
  type: File?
  inputBinding:
    prefix: --config
- id: in_input_top_path
  doc: 'Input topology file (AMBER ParmTop). Accepted formats: top, prmtop, parmtop.'
  type: File?
  inputBinding:
    prefix: --input_top_path
- id: in_input_crd_path
  doc: 'Input coordinates file (AMBER crd). Accepted formats: crd, mdcrd.'
  type: File?
  inputBinding:
    prefix: --input_crd_path
- id: in_input_md_in_path
  doc: 'Input configuration file (MD run options) (AMBER mdin). Accepted formats:
    mdin, in, txt.'
  type: File?
  inputBinding:
    prefix: --input_mdin_path
- id: in_input_cp_in_path
  doc: 'Input constant pH file (AMBER cpin). Accepted formats: cpin.'
  type: File?
  inputBinding:
    prefix: --input_cpin_path
- id: in_input_ref_path
  doc: 'Input reference coordinates for position restraints. Accepted formats: rst,
    rst7.'
  type: File?
  inputBinding:
    prefix: --input_ref_path
- id: in_output_log_path
  doc: 'Output log file. Accepted formats: log, out, txt.'
  type: File?
  inputBinding:
    prefix: --output_log_path
- id: in_output_t_raj_path
  doc: 'Output trajectory file. Accepted formats: trj, crd, mdcrd, x.'
  type: File?
  inputBinding:
    prefix: --output_traj_path
- id: in_output_rst_path
  doc: 'Output restart file. Accepted formats: rst, rst7.'
  type: File?
  inputBinding:
    prefix: --output_rst_path
- id: in_output_cp_out_path
  doc: 'Output constant pH file (AMBER cpout). Accepted formats: cpout.'
  type: File?
  inputBinding:
    prefix: --output_cpout_path
- id: in_output_cpr_st_path
  doc: 'Output constant pH restart file (AMBER rstout). Accepted formats: cprst.'
  type: File?
  inputBinding:
    prefix: --output_cprst_path
- id: in_output_md_info_path
  doc: "Output MD info. Accepted formats: mdinfo.\n"
  type: string?
  inputBinding:
    prefix: --output_mdinfo_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_log_path
  doc: 'Output log file. Accepted formats: log, out, txt.'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_log_path)
- id: out_output_t_raj_path
  doc: 'Output trajectory file. Accepted formats: trj, crd, mdcrd, x.'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_t_raj_path)
- id: out_output_rst_path
  doc: 'Output restart file. Accepted formats: rst, rst7.'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_rst_path)
- id: out_output_cp_out_path
  doc: 'Output constant pH file (AMBER cpout). Accepted formats: cpout.'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_cp_out_path)
- id: out_output_cpr_st_path
  doc: 'Output constant pH restart file (AMBER rstout). Accepted formats: cprst.'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_cpr_st_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/biobb_amber:3.5.0--py_0
cwlVersion: v1.1
baseCommand:
- pmemd_mdrun
