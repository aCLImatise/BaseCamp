version 1.0

task MiRge20 {
  command <<<
    miRge2_0
  >>>
  output {
    File out_stdout = stdout()
  }
}