version 1.0

task CruxGeneratepeptidesDecoy_ {
  input {
    String crux
    String generate_peptides
  }
  command <<<
    crux generate_peptides decoy__ \
      ~{crux} \
      ~{generate_peptides}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    crux: ""
    generate_peptides: ""
  }
  output {
    File out_stdout = stdout()
  }
}