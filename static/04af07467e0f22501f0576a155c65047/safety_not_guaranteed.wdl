version 1.0

task SafetyNotGuaranteed.py {
  input {
    String reads_dot_fa
  }
  command <<<
    safety-not-guaranteed.py \
      ~{reads_dot_fa}
  >>>
  parameter_meta {
    reads_dot_fa: "Input FASTA reads. Omit to read from stdin."
  }
}