version 1.0

task Mdrun {
  input {
    String? c
    String? input_tpr_path
    String? output_trr_path
    String? output_gro_path
    String? output_edr_path
    String? output_log_path
    String? output_xtc_path
    String? output_cpt_path
    String? output_d_hdl_path
  }
  command <<<
    mdrun \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(input_tpr_path) then ("--input_tpr_path " +  '"' + input_tpr_path + '"') else ""} \
      ~{if defined(output_trr_path) then ("--output_trr_path " +  '"' + output_trr_path + '"') else ""} \
      ~{if defined(output_gro_path) then ("--output_gro_path " +  '"' + output_gro_path + '"') else ""} \
      ~{if defined(output_edr_path) then ("--output_edr_path " +  '"' + output_edr_path + '"') else ""} \
      ~{if defined(output_log_path) then ("--output_log_path " +  '"' + output_log_path + '"') else ""} \
      ~{if defined(output_xtc_path) then ("--output_xtc_path " +  '"' + output_xtc_path + '"') else ""} \
      ~{if defined(output_cpt_path) then ("--output_cpt_path " +  '"' + output_cpt_path + '"') else ""} \
      ~{if defined(output_d_hdl_path) then ("--output_dhdl_path " +  '"' + output_d_hdl_path + '"') else ""}
  >>>
  parameter_meta {
    c: ""
    input_tpr_path: ""
    output_trr_path: ""
    output_gro_path: ""
    output_edr_path: ""
    output_log_path: ""
    output_xtc_path: ""
    output_cpt_path: ""
    output_d_hdl_path: ""
  }
}