version 1.0

task JannovarChanges {
  input {
    String jan_novar_cli
  }
  command <<<
    jannovar changes \
      ~{jan_novar_cli}
  >>>
  runtime {
    docker: "quay.io/biocontainers/jannovar-cli:0.35--0"
  }
  parameter_meta {
    jan_novar_cli: ""
  }
  output {
    File out_stdout = stdout()
  }
}