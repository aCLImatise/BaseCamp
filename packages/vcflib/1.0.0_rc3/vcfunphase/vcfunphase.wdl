version 1.0

task Vcfunphase {
  input {
    File vcf_file
  }
  command <<<
    vcfunphase \
      ~{vcf_file}
  >>>
  parameter_meta {
    vcf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}