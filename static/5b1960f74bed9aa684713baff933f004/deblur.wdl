version 1.0

task Deblur {
  command <<<
    deblur
  >>>
  output {
    File out_stdout = stdout()
  }
}