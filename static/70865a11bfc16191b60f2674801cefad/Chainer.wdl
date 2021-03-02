version 1.0

task Chainer {
  command <<<
    Chainer
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}