version 1.0

task Bcftools {
  command <<<
    bcftools
  >>>
  output {
    File out_stdout = stdout()
  }
}