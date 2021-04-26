version 1.0

task Vg {
  input {
    String var_command
  }
  command <<<
    vg \
      ~{var_command}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vg:1.32.0--h9ee0642_0"
  }
  parameter_meta {
    var_command: ""
  }
  output {
    File out_stdout = stdout()
  }
}