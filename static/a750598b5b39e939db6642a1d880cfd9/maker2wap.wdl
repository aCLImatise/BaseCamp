version 1.0

task Maker2wap {
  command <<<
    maker2wap
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}