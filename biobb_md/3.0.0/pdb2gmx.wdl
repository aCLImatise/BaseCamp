version 1.0

task Pdb2gmx {
  input {
    String? config
    String? input_pdb_path
    String? output_gro_path
    String? output_top_zip_path
  }
  command <<<
    pdb2gmx \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_pdb_path) then ("--input_pdb_path " +  '"' + input_pdb_path + '"') else ""} \
      ~{if defined(output_gro_path) then ("--output_gro_path " +  '"' + output_gro_path + '"') else ""} \
      ~{if defined(output_top_zip_path) then ("--output_top_zip_path " +  '"' + output_top_zip_path + '"') else ""}
  >>>
  parameter_meta {
    config: "This file can be a YAML file, JSON file or JSON string"
    input_pdb_path: ""
    output_gro_path: ""
    output_top_zip_path: ""
  }
}