version 1.0

task Rnftools {
  command <<<
    rnftools
  >>>
  output {
    File out_stdout = stdout()
  }
}