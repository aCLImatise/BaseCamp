version 1.0

task Geecee {
  command <<<
    geecee
  >>>
  output {
    File out_stdout = stdout()
  }
}