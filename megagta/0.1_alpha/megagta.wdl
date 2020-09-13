version 1.0

task Megagta {
  command <<<
    megagta
  >>>
  output {
    File out_stdout = stdout()
  }
}