version 1.0

task SavArgs {
  input {
    String sav
    String sub_command
    String? args
  }
  command <<<
    sav args \
      ~{sav} \
      ~{sub_command} \
      ~{args}
  >>>
  runtime {
    docker: "quay.io/biocontainers/savvy:2.0.1--h0808e92_0"
  }
  parameter_meta {
    sav: ""
    sub_command: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}