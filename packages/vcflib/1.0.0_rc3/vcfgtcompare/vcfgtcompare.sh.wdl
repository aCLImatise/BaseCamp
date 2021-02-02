version 1.0

task Vcfgtcomparesh {
  command <<<
    vcfgtcompare_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}