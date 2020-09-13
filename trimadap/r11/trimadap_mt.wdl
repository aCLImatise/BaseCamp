version 1.0

task Trimadapmt {
  command <<<
    trimadap_mt
  >>>
  output {
    File out_stdout = stdout()
  }
}