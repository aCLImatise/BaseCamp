version 1.0

task Medaka {
  command <<<
    medaka
  >>>
  output {
    File out_stdout = stdout()
  }
}