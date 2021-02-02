version 1.0

task Squeakr {
  command <<<
    squeakr
  >>>
  output {
    File out_stdout = stdout()
  }
}