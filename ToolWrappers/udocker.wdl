version 1.0

task Udocker {
  command <<<
    udocker
  >>>
  output {
    File out_stdout = stdout()
  }
}