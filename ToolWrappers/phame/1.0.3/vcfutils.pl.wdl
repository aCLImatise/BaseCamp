version 1.0

task Vcfutilspl {
  command <<<
    vcfutils_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}