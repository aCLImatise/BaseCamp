version 1.0

task Grompp {
  input {
    File? input_gro_path
    String? input_ndx_path
    File? input_cpt_path
    File? output_tpr_path
    File? input_top_zip_path
    String? c
  }
  command <<<
    grompp \
      ~{if defined(input_gro_path) then ("--input_gro_path " +  '"' + input_gro_path + '"') else ""} \
      ~{if defined(input_ndx_path) then ("--input_ndx_path " +  '"' + input_ndx_path + '"') else ""} \
      ~{if defined(input_cpt_path) then ("--input_cpt_path " +  '"' + input_cpt_path + '"') else ""} \
      ~{if defined(output_tpr_path) then ("--output_tpr_path " +  '"' + output_tpr_path + '"') else ""} \
      ~{if defined(input_top_zip_path) then ("--input_top_zip_path " +  '"' + input_top_zip_path + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""}
  >>>
  parameter_meta {
    input_gro_path: "--input_top_zip_path INPUT_TOP_ZIP_PATH\\n--output_tpr_path OUTPUT_TPR_PATH\\n"
    input_ndx_path: ""
    input_cpt_path: ""
    output_tpr_path: ""
    input_top_zip_path: ""
    c: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_tpr_path = "${in_output_tpr_path}"
  }
}