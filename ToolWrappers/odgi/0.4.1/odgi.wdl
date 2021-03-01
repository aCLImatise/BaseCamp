version 1.0

task Odgi {
  input {
    String var_command
  }
  command <<<
    odgi \
      ~{var_command}
  >>>
  runtime {
    docker: "quay.io/biocontainers/odgi:0.4.1--py36hd181a71_0"
  }
  parameter_meta {
    var_command: ""
  }
  output {
    File out_stdout = stdout()
  }
}