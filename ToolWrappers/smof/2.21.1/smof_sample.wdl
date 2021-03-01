version 1.0

task SmofSample {
  input {
    Int? number
    String? seed
    String input_fasta_sequence
  }
  command <<<
    smof sample \
      ~{input_fasta_sequence} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/smof:2.21.1--py_0"
  }
  parameter_meta {
    number: "sample size (default=1)"
    seed: "set random seed (for reproducibility/debugging)"
    input_fasta_sequence: "input fasta sequence (default = stdin)"
  }
  output {
    File out_stdout = stdout()
  }
}