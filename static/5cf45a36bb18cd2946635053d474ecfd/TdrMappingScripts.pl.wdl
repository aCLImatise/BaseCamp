version 1.0

task TdrMappingScriptspl {
  input {
    String reference_trna_dot_fa
  }
  command <<<
    TdrMappingScripts_pl \
      ~{reference_trna_dot_fa}
  >>>
  parameter_meta {
    reference_trna_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}