version 1.0

task Vcfvarstats {
  command <<<
    vcfvarstats
  >>>
  output {
    File out_stdout = stdout()
  }
}