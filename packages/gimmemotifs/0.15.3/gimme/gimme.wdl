version 1.0

task Gimme {
  input {
    String subcommand
  }
  command <<<
    gimme \
      ~{subcommand}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gimmemotifs:0.15.3--py38hc37a69a_0"
  }
  parameter_meta {
    subcommand: ""
  }
  output {
    File out_stdout = stdout()
  }
}