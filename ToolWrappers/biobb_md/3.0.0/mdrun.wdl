version 1.0

task Mdrun {
  input {
    File? config
    File? output_d_hdl_path
    File? output_cpt_path
    File? output_xtc_path
    File? output_log_path
    String? output_edr_path
    File? output_gro_path
    String? output_trr_path
    File? input_tpr_path
  }
  command <<<
    mdrun \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(output_d_hdl_path) then ("--output_dhdl_path " +  '"' + output_d_hdl_path + '"') else ""} \
      ~{if defined(output_cpt_path) then ("--output_cpt_path " +  '"' + output_cpt_path + '"') else ""} \
      ~{if defined(output_xtc_path) then ("--output_xtc_path " +  '"' + output_xtc_path + '"') else ""} \
      ~{if defined(output_log_path) then ("--output_log_path " +  '"' + output_log_path + '"') else ""} \
      ~{if defined(output_edr_path) then ("--output_edr_path " +  '"' + output_edr_path + '"') else ""} \
      ~{if defined(output_gro_path) then ("--output_gro_path " +  '"' + output_gro_path + '"') else ""} \
      ~{if defined(output_trr_path) then ("--output_trr_path " +  '"' + output_trr_path + '"') else ""} \
      ~{if defined(input_tpr_path) then ("--input_tpr_path " +  '"' + input_tpr_path + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    config: "This file can be a YAML file, JSON file or JSON string"
    output_d_hdl_path: ""
    output_cpt_path: ""
    output_xtc_path: ""
    output_log_path: ""
    output_edr_path: ""
    output_gro_path: ""
    output_trr_path: ""
    input_tpr_path: ""
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