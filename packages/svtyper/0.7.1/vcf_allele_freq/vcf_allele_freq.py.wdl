version 1.0

task VcfAlleleFreqpy {
  input {
    String vcf
  }
  command <<<
    vcf_allele_freq_py \
      ~{vcf}
  >>>
  parameter_meta {
    vcf: "VCF input (default: stdin)"
  }
  output {
    File out_stdout = stdout()
  }
}