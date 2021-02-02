version 1.0

task SmofSample {
  input {
    Int? number
    String? seed
    String input_fasta_default
  }
  command <<<
    smof sample \
      ~{input_fasta_default} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  parameter_meta {
    number: "sample size (default=1)"
    seed: "set random seed (for reproducibility/debugging)"
    input_fasta_default: "input fasta sequence (default = stdin)"
  }
  output {
    File out_stdout = stdout()
  }
}