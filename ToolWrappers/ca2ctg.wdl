version 1.0

task Ca2ctg {
  command <<<
    ca2ctg
  >>>
  output {
    File out_stdout = stdout()
  }
}