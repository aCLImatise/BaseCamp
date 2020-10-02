version 1.0

task Fastavalidcds {
  command <<<
    fastavalidcds
  >>>
  output {
    File out_stdout = stdout()
  }
}