version 1.0

task Vcfcombinepy {
  command <<<
    vcf_combine_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}