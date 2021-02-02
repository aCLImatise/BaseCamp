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
  parameter_meta {
    var_command: ""
    name: ""
  }
  output {
    File out_stdout = stdout()
  }
}