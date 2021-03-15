version 1.0

task SanderMdrun {
  input {
    File? config
    File? input_top_path
    File? input_crd_path
    File? input_md_in_path
    File? input_cp_in_path
    File? input_ref_path
    File? output_log_path
    File? output_t_raj_path
    File? output_rst_path
    File? output_cp_out_path
    File? output_cpr_st_path
    String? output_md_info_path
  }
  command <<<
    sander_mdrun \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_top_path) then ("--input_top_path " +  '"' + input_top_path + '"') else ""} \
      ~{if defined(input_crd_path) then ("--input_crd_path " +  '"' + input_crd_path + '"') else ""} \
      ~{if defined(input_md_in_path) then ("--input_mdin_path " +  '"' + input_md_in_path + '"') else ""} \
      ~{if defined(input_cp_in_path) then ("--input_cpin_path " +  '"' + input_cp_in_path + '"') else ""} \
      ~{if defined(input_ref_path) then ("--input_ref_path " +  '"' + input_ref_path + '"') else ""} \
      ~{if defined(output_log_path) then ("--output_log_path " +  '"' + output_log_path + '"') else ""} \
      ~{if defined(output_t_raj_path) then ("--output_traj_path " +  '"' + output_t_raj_path + '"') else ""} \
      ~{if defined(output_rst_path) then ("--output_rst_path " +  '"' + output_rst_path + '"') else ""} \
      ~{if defined(output_cp_out_path) then ("--output_cpout_path " +  '"' + output_cp_out_path + '"') else ""} \
      ~{if defined(output_cpr_st_path) then ("--output_cprst_path " +  '"' + output_cpr_st_path + '"') else ""} \
      ~{if defined(output_md_info_path) then ("--output_mdinfo_path " +  '"' + output_md_info_path + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobb_amber:3.5.0--py_0"
  }
  parameter_meta {
    config: "Configuration file"
    input_top_path: "Input topology file (AMBER ParmTop). Accepted formats: top, prmtop, parmtop."
    input_crd_path: "Input coordinates file (AMBER crd). Accepted formats: crd, mdcrd."
    input_md_in_path: "Input configuration file (MD run options) (AMBER mdin). Accepted formats: mdin, in, txt."
    input_cp_in_path: "Input constant pH file (AMBER cpin). Accepted formats: cpin."
    input_ref_path: "Input reference coordinates for position restraints. Accepted formats: rst, rst7."
    output_log_path: "Output log file. Accepted formats: log, out, txt."
    output_t_raj_path: "Output trajectory file. Accepted formats: trj, crd, mdcrd, x."
    output_rst_path: "Output restart file. Accepted formats: rst, rst7."
    output_cp_out_path: "Output constant pH file (AMBER cpout). Accepted formats: cpout."
    output_cpr_st_path: "Output constant pH restart file (AMBER rstout). Accepted formats: cprst."
    output_md_info_path: "Output MD info. Accepted formats: mdinfo.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_log_path = "${in_output_log_path}"
    File out_output_t_raj_path = "${in_output_t_raj_path}"
    File out_output_rst_path = "${in_output_rst_path}"
    File out_output_cp_out_path = "${in_output_cp_out_path}"
    File out_output_cpr_st_path = "${in_output_cpr_st_path}"
  }
}