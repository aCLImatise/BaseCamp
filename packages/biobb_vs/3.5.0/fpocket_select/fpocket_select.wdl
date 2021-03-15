version 1.0

task FpocketSelect {
  input {
    File? config
    File? input_pockets_zip
    File? output_pocket_pdb
    File? output_pocket_pqr
  }
  command <<<
    fpocket_select \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_pockets_zip) then ("--input_pockets_zip " +  '"' + input_pockets_zip + '"') else ""} \
      ~{if defined(output_pocket_pdb) then ("--output_pocket_pdb " +  '"' + output_pocket_pdb + '"') else ""} \
      ~{if defined(output_pocket_pqr) then ("--output_pocket_pqr " +  '"' + output_pocket_pqr + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobb_vs:3.5.0--py_0"
  }
  parameter_meta {
    config: "Configuration file"
    input_pockets_zip: "Path to all the pockets found by fpocket. Accepted formats: zip."
    output_pocket_pdb: "Path to the PDB file with the cavity found by fpocket. Accepted formats: pdb."
    output_pocket_pqr: "Path to the PQR file with the pocket found by fpocket. Accepted formats: pqr.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}