version 1.0

task FixBackbone {
  input {
    File? config
    File? input_pdb_path
    File? input_fast_a_canonical_sequence_path
    File? output_pdb_path
  }
  command <<<
    fix_backbone \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_pdb_path) then ("--input_pdb_path " +  '"' + input_pdb_path + '"') else ""} \
      ~{if defined(input_fast_a_canonical_sequence_path) then ("--input_fasta_canonical_sequence_path " +  '"' + input_fast_a_canonical_sequence_path + '"') else ""} \
      ~{if defined(output_pdb_path) then ("--output_pdb_path " +  '"' + output_pdb_path + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobb_model:3.5.1--py_1"
  }
  parameter_meta {
    config: "This file can be a YAML file, JSON file or JSON string"
    input_pdb_path: "Input PDB file name"
    input_fast_a_canonical_sequence_path: "Input FASTA file name"
    output_pdb_path: "Output PDB file name\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_pdb_path = "${in_output_pdb_path}"
  }
}