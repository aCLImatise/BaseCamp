version 1.0

task Byobuctrla {
  input {
    String? mode
  }
  command <<<
    byobu_ctrl_a \
      ~{mode}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mode: ""
  }
  output {
    File out_stdout = stdout()
  }
}