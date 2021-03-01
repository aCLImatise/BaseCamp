version 1.0

task FlipPC1toMatchpl {
  command <<<
    flipPC1toMatch_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}