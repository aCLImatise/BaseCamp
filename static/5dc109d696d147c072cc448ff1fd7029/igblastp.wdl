version 1.0

task Igblastp {
  command <<<
    igblastp
  >>>
  output {
    File out_stdout = stdout()
  }
}