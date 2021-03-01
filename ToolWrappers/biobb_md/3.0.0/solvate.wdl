version 1.0

task Solvate {
  input {
    File? config
    File? output_top_zip_path
    File? input_top_zip_path
    File? output_gro_path
    File? input_solute_gro_path
  }
  command <<<
    solvate \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(output_top_zip_path) then ("--output_top_zip_path " +  '"' + output_top_zip_path + '"') else ""} \
      ~{if defined(input_top_zip_path) then ("--input_top_zip_path " +  '"' + input_top_zip_path + '"') else ""} \
      ~{if defined(output_gro_path) then ("--output_gro_path " +  '"' + output_gro_path + '"') else ""} \
      ~{if defined(input_solute_gro_path) then ("--input_solute_gro_path " +  '"' + input_solute_gro_path + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    config: "This file can be a YAML file, JSON file or JSON string"
    output_top_zip_path: ""
    input_top_zip_path: ""
    output_gro_path: ""
    input_solute_gro_path: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_top_zip_path = "${in_output_top_zip_path}"
    File out_output_gro_path = "${in_output_gro_path}"
  }
}