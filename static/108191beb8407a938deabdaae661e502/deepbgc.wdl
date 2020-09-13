version 1.0

task Deepbgc {
  command <<<
    deepbgc
  >>>
  output {
    File out_stdout = stdout()
  }
}