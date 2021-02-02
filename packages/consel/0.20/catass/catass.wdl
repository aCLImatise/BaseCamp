version 1.0

task Catass {
  command <<<
    catass
  >>>
  output {
    File out_stdout = stdout()
  }
}