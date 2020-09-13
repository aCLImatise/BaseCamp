version 1.0

task Deepsvr {
  command <<<
    deepsvr
  >>>
  output {
    File out_stdout = stdout()
  }
}