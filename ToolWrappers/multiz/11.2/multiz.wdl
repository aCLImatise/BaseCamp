version 1.0

task Multiz {
  command <<<
    multiz
  >>>
  output {
    File out_stdout = stdout()
  }
}