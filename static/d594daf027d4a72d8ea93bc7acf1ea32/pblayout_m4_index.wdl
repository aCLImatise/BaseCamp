version 1.0

task PblayoutM4index {
  input {
    Int in_do_tm_four
  }
  command <<<
    pblayout m4_index \
      ~{in_do_tm_four}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_do_tm_four: "STR  Input M4."
  }
  output {
    File out_stdout = stdout()
  }
}