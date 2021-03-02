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
    docker: "quay.io/biocontainers/genomepy:0.9.3--py_0"
  }
  parameter_meta {
    var_command: ""
  }
  output {
    File out_stdout = stdout()
  }
}