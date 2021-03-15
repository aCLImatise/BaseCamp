version 1.0

task NabBuildDnaStructure {
  input {
    File? config
    File? output_pdb_path
  }
  command <<<
    nab_build_dna_structure \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(output_pdb_path) then ("--output_pdb_path " +  '"' + output_pdb_path + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobb_amber:3.5.0--py_0"
  }
  parameter_meta {
    config: "Configuration file"
    output_pdb_path: "Linear (unfolded) 3D structure PDB file. Accepted formats: pdb.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_pdb_path = "${in_output_pdb_path}"
  }
}