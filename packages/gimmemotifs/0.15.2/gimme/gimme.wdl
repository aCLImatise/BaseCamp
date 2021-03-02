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
    docker: "quay.io/biocontainers/gimmemotifs:0.15.2--py38h0213d0e_0"
  }
  parameter_meta {
    subcommand: ""
  }
  output {
    File out_stdout = stdout()
  }
}