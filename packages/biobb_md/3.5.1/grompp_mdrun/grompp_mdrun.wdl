version 1.0

task GromppMdrun {
  input {
    File? config
    File? output_d_hdl_path
    File? output_cpt_path
    File? output_xtc_path
    File? input_mdp_path
    String? input_ndx_path
    File? input_cpt_path
    File? output_log_path
    String? output_edr_path
    File? output_gro_path
    String? output_trr_path
    File? input_top_zip_path
    File? input_gro_path
  }
  command <<<
    grompp_mdrun \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(output_d_hdl_path) then ("--output_dhdl_path " +  '"' + output_d_hdl_path + '"') else ""} \
      ~{if defined(output_cpt_path) then ("--output_cpt_path " +  '"' + output_cpt_path + '"') else ""} \
      ~{if defined(output_xtc_path) then ("--output_xtc_path " +  '"' + output_xtc_path + '"') else ""} \
      ~{if defined(input_mdp_path) then ("--input_mdp_path " +  '"' + input_mdp_path + '"') else ""} \
      ~{if defined(input_ndx_path) then ("--input_ndx_path " +  '"' + input_ndx_path + '"') else ""} \
      ~{if defined(input_cpt_path) then ("--input_cpt_path " +  '"' + input_cpt_path + '"') else ""} \
      ~{if defined(output_log_path) then ("--output_log_path " +  '"' + output_log_path + '"') else ""} \
      ~{if defined(output_edr_path) then ("--output_edr_path " +  '"' + output_edr_path + '"') else ""} \
      ~{if defined(output_gro_path) then ("--output_gro_path " +  '"' + output_gro_path + '"') else ""} \
      ~{if defined(output_trr_path) then ("--output_trr_path " +  '"' + output_trr_path + '"') else ""} \
      ~{if defined(input_top_zip_path) then ("--input_top_zip_path " +  '"' + input_top_zip_path + '"') else ""} \
      ~{if defined(input_gro_path) then ("--input_gro_path " +  '"' + input_gro_path + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobb_md:3.5.1--py_0"
  }
  parameter_meta {
    config: "This file can be a YAML file, JSON file or JSON string"
    output_d_hdl_path: ""
    output_cpt_path: ""
    output_xtc_path: ""
    input_mdp_path: ""
    input_ndx_path: ""
    input_cpt_path: ""
    output_log_path: ""
    output_edr_path: ""
    output_gro_path: ""
    output_trr_path: ""
    input_top_zip_path: ""
    input_gro_path: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_d_hdl_path = "${in_output_d_hdl_path}"
    File out_output_cpt_path = "${in_output_cpt_path}"
    File out_output_xtc_path = "${in_output_xtc_path}"
    File out_output_log_path = "${in_output_log_path}"
    File out_output_gro_path = "${in_output_gro_path}"
  }
}