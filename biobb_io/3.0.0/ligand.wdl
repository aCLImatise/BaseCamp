version 1.0

task Ligand {
  input {
    String? config
    String? output_pdb_path
  }
  command <<<
    ligand \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(output_pdb_path) then ("--output_pdb_path " +  '"' + output_pdb_path + '"') else ""}
  >>>
  parameter_meta {
    config: "This file can be a YAML file, JSON file or JSON string"
    output_pdb_path: "Path to the output PDB ligand file."
  }
}