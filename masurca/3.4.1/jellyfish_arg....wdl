version 1.0

task JellyfishArg... {
  input {
    String jellyfish
    String cmd
    String arg_dot_dot_dot
  }
  command <<<
    jellyfish arg... \
      ~{jellyfish} \
      ~{cmd} \
      ~{arg_dot_dot_dot}
  >>>
  parameter_meta {
    jellyfish: ""
    cmd: ""
    arg_dot_dot_dot: ""
  }
}