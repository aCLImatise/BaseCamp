version 1.0

task CruxGeneratepeptidesCruxoutput {
  input {
    String crux
    String generate_peptides
  }
  command <<<
    crux generate_peptides crux_output_ \
      ~{crux} \
      ~{generate_peptides}
  >>>
  parameter_meta {
    crux: ""
    generate_peptides: ""
  }
  output {
    File out_stdout = stdout()
  }
}