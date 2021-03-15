version 1.0

task BoxResidues {
  input {
    File? config
    File? input_pdb_path
    File? output_pdb_path
  }
  command <<<
    box_residues \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_pdb_path) then ("--input_pdb_path " +  '"' + input_pdb_path + '"') else ""} \
      ~{if defined(output_pdb_path) then ("--output_pdb_path " +  '"' + output_pdb_path + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobb_vs:3.5.0--py_0"
  }
  parameter_meta {
    config: "Configuration file"
    input_pdb_path: "PDB protein structure for which the box will be build. Its size and center will be set around the 'resid_list' property once mapped against this PDB. Accepted formats: pdb."
    output_pdb_path: "PDB including the annotation of the box center and size as REMARKs. Accepted formats: pdb.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_pdb_path = "${in_output_pdb_path}"
  }
}