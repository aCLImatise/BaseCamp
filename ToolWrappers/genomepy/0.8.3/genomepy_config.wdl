version 1.0

task GenomepyConfig {
  input {
    String var_command
  }
  command <<<
    genomepy config \
      ~{var_command}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    var_command: ""
  }
  output {
    File out_stdout = stdout()
  }
}