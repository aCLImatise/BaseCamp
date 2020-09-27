version 1.0

task Fastalength {
  command <<<
    fastalength
  >>>
  output {
    File out_stdout = stdout()
  }
}