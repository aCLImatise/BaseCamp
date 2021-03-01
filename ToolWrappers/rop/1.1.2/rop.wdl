version 1.0

task Rop {
  command <<<
    rop
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}