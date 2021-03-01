version 1.0

task Ananse {
  input {
    String subcommand
  }
  command <<<
    ananse \
      ~{subcommand}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ananse:0.1.7--py_0"
  }
  parameter_meta {
    subcommand: ""
  }
  output {
    File out_stdout = stdout()
  }
}