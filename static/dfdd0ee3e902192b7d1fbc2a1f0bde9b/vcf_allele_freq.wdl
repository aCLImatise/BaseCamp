version 1.0

task VcfAlleleFreq.py {
  input {
    String vcf
  }
  command <<<
    vcf_allele_freq.py \
      ~{vcf}
  >>>
  parameter_meta {
    vcf: "VCF input (default: stdin)"
  }
}