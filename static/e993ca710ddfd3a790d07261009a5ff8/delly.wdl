version 1.0

task Delly {
  command <<<
    delly
  >>>
  output {
    File out_stdout = stdout()
  }
}