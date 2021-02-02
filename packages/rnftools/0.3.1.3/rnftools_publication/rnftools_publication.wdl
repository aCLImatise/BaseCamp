version 1.0

task RnftoolsPublication {
  command <<<
    rnftools publication
  >>>
  output {
    File out_stdout = stdout()
  }
}