version 1.0

task Maker2wap {
  command <<<
    maker2wap
  >>>
  output {
    File out_stdout = stdout()
  }
}