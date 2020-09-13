version 1.0

task Vcfcombinepy {
  command <<<
    vcf_combine_py
  >>>
  output {
    File out_stdout = stdout()
  }
}