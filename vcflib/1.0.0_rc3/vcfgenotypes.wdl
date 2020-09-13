version 1.0

task Vcfgenotypes {
  input {
    File vcf_file
  }
  command <<<
    vcfgenotypes \
      ~{vcf_file}
  >>>
  parameter_meta {
    vcf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}