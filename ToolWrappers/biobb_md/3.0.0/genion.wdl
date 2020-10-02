version 1.0

task Genion {
  input {
    File? config
    File? input_tpr_path
    File? output_top_zip_path
    File? input_top_zip_path
    File? output_gro_path
  }
  command <<<
    genion \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_tpr_path) then ("--input_tpr_path " +  '"' + input_tpr_path + '"') else ""} \
      ~{if defined(output_top_zip_path) then ("--output_top_zip_path " +  '"' + output_top_zip_path + '"') else ""} \
      ~{if defined(input_top_zip_path) then ("--input_top_zip_path " +  '"' + input_top_zip_path + '"') else ""} \
      ~{if defined(output_gro_path) then ("--output_gro_path " +  '"' + output_gro_path + '"') else ""}
  >>>
  parameter_meta {
    config: "This file can be a YAML file, JSON file or JSON string"
    input_tpr_path: "--output_gro_path OUTPUT_GRO_PATH\\n--input_top_zip_path INPUT_TOP_ZIP_PATH\\n--output_top_zip_path OUTPUT_TOP_ZIP_PATH\\n"
    output_top_zip_path: ""
    input_top_zip_path: ""
    output_gro_path: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_top_zip_path = "${in_output_top_zip_path}"
    File out_output_gro_path = "${in_output_gro_path}"
  }
}