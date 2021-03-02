version 1.0

task SavSubcommand {
  input {
    String? args
  }
  command <<<
    sav sub_command \
      ~{args}
  >>>
  runtime {
    docker: "quay.io/biocontainers/savvy:1.3.0--h0808e92_0"
  }
  parameter_meta {
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}