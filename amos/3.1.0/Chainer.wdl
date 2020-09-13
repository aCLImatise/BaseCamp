version 1.0

task Chainer {
  command <<<
    Chainer
  >>>
  output {
    File out_stdout = stdout()
  }
}