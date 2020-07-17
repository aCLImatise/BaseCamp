version 1.0

task TdrMappingScripts.pl {
  input {
    String reference_trna_dot_fa
    String sample_dot_fa
  }
  command <<<
    TdrMappingScripts.pl \
      ~{reference_trna_dot_fa} \
      ~{sample_dot_fa}
  >>>
  parameter_meta {
    reference_trna_dot_fa: ""
    sample_dot_fa: ""
  }
}