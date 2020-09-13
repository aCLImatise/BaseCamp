version 1.0

task Sam2vcfpl {
  command <<<
    sam2vcf_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}