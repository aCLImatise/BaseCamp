version 1.0

task Grompp {
  input {
    File? config
    File? input_cpt_path
    String? input_ndx_path
    File? input_gro_path
    File? input_top_zip_path
    File? output_tpr_path
  }
  command <<<
    grompp \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_cpt_path) then ("--input_cpt_path " +  '"' + input_cpt_path + '"') else ""} \
      ~{if defined(input_ndx_path) then ("--input_ndx_path " +  '"' + input_ndx_path + '"') else ""} \
      ~{if defined(input_gro_path) then ("--input_gro_path " +  '"' + input_gro_path + '"') else ""} \
      ~{if defined(input_top_zip_path) then ("--input_top_zip_path " +  '"' + input_top_zip_path + '"') else ""} \
      ~{if defined(output_tpr_path) then ("--output_tpr_path " +  '"' + output_tpr_path + '"') else ""}
  >>>
  parameter_meta {
    config: "This file can be a YAML file, JSON file or JSON string"
    input_cpt_path: ""
    input_ndx_path: ""
    input_gro_path: ""
    input_top_zip_path: ""
    output_tpr_path: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_tpr_path = "${in_output_tpr_path}"
  }
}