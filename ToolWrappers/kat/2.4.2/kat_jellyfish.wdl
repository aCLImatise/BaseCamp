version 1.0

task KatJellyfish {
  input {
    String jellyfish
    String cmd
    String arg_dot_dot_dot
  }
  command <<<
    kat_jellyfish \
      ~{jellyfish} \
      ~{cmd} \
      ~{arg_dot_dot_dot}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    jellyfish: ""
    cmd: ""
    arg_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}