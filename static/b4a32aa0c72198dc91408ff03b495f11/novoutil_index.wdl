version 1.0

task NovoutilIndex {
  input {
    String genome_dot_nix
  }
  command <<<
    novoutil index \
      ~{genome_dot_nix}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    genome_dot_nix: ""
  }
  output {
    File out_stdout = stdout()
  }
}