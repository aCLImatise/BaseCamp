version 1.0

task Cafe {
  command <<<
    cafe
  >>>
  output {
    File out_stdout = stdout()
  }
}