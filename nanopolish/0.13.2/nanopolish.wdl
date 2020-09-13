version 1.0

task Nanopolish {
  command <<<
    nanopolish
  >>>
  output {
    File out_stdout = stdout()
  }
}