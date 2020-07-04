version 1.0

task Grompp {
  input {
    String? c
    String? input_gro_path
    String? input_top_zip_path
    String? output_tpr_path
    String? input_cpt_path
    String? input_ndx_path
  }
  command <<<
    grompp \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(input_gro_path) then ("--input_gro_path " +  '"' + input_gro_path + '"') else ""} \
      ~{if defined(input_top_zip_path) then ("--input_top_zip_path " +  '"' + input_top_zip_path + '"') else ""} \
      ~{if defined(output_tpr_path) then ("--output_tpr_path " +  '"' + output_tpr_path + '"') else ""} \
      ~{if defined(input_cpt_path) then ("--input_cpt_path " +  '"' + input_cpt_path + '"') else ""} \
      ~{if defined(input_ndx_path) then ("--input_ndx_path " +  '"' + input_ndx_path + '"') else ""}
  >>>
  parameter_meta {
    c: ""
    input_gro_path: ""
    input_top_zip_path: ""
    output_tpr_path: ""
    input_cpt_path: ""
    input_ndx_path: ""
  }
}