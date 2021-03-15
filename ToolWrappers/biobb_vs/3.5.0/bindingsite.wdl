version 1.0

task Bindingsite {
  input {
    File? config
    File? input_pdb_path
    File? input_clusters_zip
    File? output_pdb_path
  }
  command <<<
    bindingsite \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_pdb_path) then ("--input_pdb_path " +  '"' + input_pdb_path + '"') else ""} \
      ~{if defined(input_clusters_zip) then ("--input_clusters_zip " +  '"' + input_clusters_zip + '"') else ""} \
      ~{if defined(output_pdb_path) then ("--output_pdb_path " +  '"' + output_pdb_path + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobb_vs:3.5.0--py_0"
  }
  parameter_meta {
    config: "Configuration file"
    input_pdb_path: "Path to the PDB structure where the binding site is to be found. Accepted formats: pdb."
    input_clusters_zip: "Path to the ZIP file with all the PDB members of the identity cluster. Accepted formats: zip."
    output_pdb_path: "Path to the PDB containig the residues belonging to the binding site. Accepted formats: pdb.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_pdb_path = "${in_output_pdb_path}"
  }
}