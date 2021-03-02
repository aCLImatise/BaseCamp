version 1.0

task CanonicalFasta {
  input {
    File? config
    File? output_fast_a_path
  }
  command <<<
    canonical_fasta \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(output_fast_a_path) then ("--output_fasta_path " +  '"' + output_fast_a_path + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobb_io:3.5.1--py_0"
  }
  parameter_meta {
    config: "This file can be a YAML file, JSON file or JSON string"
    output_fast_a_path: "Path to the canonical FASTA file. Accepted formats: fasta.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_fast_a_path = "${in_output_fast_a_path}"
  }
}