version 1.0

task Bamfiltermc {
  command <<<
    bamfiltermc
  >>>
  output {
    File out_stdout = stdout()
  }
}