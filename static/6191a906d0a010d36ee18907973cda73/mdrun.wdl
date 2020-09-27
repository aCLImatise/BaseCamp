version 1.0

task Mdrun {
  input {
    File? input_tpr_path
    File? output_d_hdl_path
    File? output_cpt_path
    File? output_xtc_path
    File? output_log_path
    String? output_edr_path
    File? output_gro_path
    String? output_trr_path
    String? c
  }
  command <<<
    mdrun \
      ~{if defined(input_tpr_path) then ("--input_tpr_path " +  '"' + input_tpr_path + '"') else ""} \
      ~{if defined(output_d_hdl_path) then ("--output_dhdl_path " +  '"' + output_d_hdl_path + '"') else ""} \
      ~{if defined(output_cpt_path) then ("--output_cpt_path " +  '"' + output_cpt_path + '"') else ""} \
      ~{if defined(output_xtc_path) then ("--output_xtc_path " +  '"' + output_xtc_path + '"') else ""} \
      ~{if defined(output_log_path) then ("--output_log_path " +  '"' + output_log_path + '"') else ""} \
      ~{if defined(output_edr_path) then ("--output_edr_path " +  '"' + output_edr_path + '"') else ""} \
      ~{if defined(output_gro_path) then ("--output_gro_path " +  '"' + output_gro_path + '"') else ""} \
      ~{if defined(output_trr_path) then ("--output_trr_path " +  '"' + output_trr_path + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""}
  >>>
  parameter_meta {
    input_tpr_path: "--output_trr_path OUTPUT_TRR_PATH\\n--output_gro_path OUTPUT_GRO_PATH\\n--output_edr_path OUTPUT_EDR_PATH\\n--output_log_path OUTPUT_LOG_PATH\\n"
    output_d_hdl_path: ""
    output_cpt_path: ""
    output_xtc_path: ""
    output_log_path: ""
    output_edr_path: ""
    output_gro_path: ""
    output_trr_path: ""
    c: ""
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