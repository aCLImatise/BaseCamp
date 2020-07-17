version 1.0

task AppendLigand {
  input {
    String? config
    String? input_top_zip_path
    String? input_itp_path
    String? output_top_zip_path
  }
  command <<<
    append_ligand \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_top_zip_path) then ("--input_top_zip_path " +  '"' + input_top_zip_path + '"') else ""} \
      ~{if defined(input_itp_path) then ("--input_itp_path " +  '"' + input_itp_path + '"') else ""} \
      ~{if defined(output_top_zip_path) then ("--output_top_zip_path " +  '"' + output_top_zip_path + '"') else ""}
  >>>
  parameter_meta {
    config: "This file can be a YAML file, JSON file or JSON string"
    input_top_zip_path: ""
    input_itp_path: ""
    output_top_zip_path: ""
  }
}