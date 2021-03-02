version 1.0

task Fulen {
  command <<<
    fu_len
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}