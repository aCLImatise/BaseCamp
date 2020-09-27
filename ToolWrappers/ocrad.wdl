version 1.0

task Ocrad {
  command <<<
    ocrad
  >>>
  output {
    File out_stdout = stdout()
  }
}