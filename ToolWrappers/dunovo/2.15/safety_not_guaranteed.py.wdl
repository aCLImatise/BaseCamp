version 1.0

task Safetynotguaranteedpy {
  input {
    String reads_dot_fa
  }
  command <<<
    safety_not_guaranteed_py \
      ~{reads_dot_fa}
  >>>
  parameter_meta {
    reads_dot_fa: "Input FASTA reads. Omit to read from stdin."
  }
  output {
    File out_stdout = stdout()
  }
}