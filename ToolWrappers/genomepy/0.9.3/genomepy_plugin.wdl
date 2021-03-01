version 1.0

task GenomepyPlugin {
  input {
    String var_command
    String? name
  }
  command <<<
    genomepy plugin \
      ~{var_command} \
      ~{name}
  >>>
  runtime {
    docker: "quay.io/biocontainers/genomepy:0.9.3--py_0"
  }
  parameter_meta {
    var_command: ""
    name: ""
  }
  output {
    File out_stdout = stdout()
  }
}