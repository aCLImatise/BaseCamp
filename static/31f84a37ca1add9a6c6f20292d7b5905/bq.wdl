version 1.0

task Bq {
  input {
    Boolean? global_flags
    Boolean? command_flags
    String var_command
    String? args
  }
  command <<<
    bq \
      ~{var_command} \
      ~{args} \
      ~{true="--global_flags" false="" global_flags} \
      ~{true="--command_flags" false="" command_flags}
  >>>
  parameter_meta {
    global_flags: ""
    command_flags: ""
    var_command: ""
    args: ""
  }
}