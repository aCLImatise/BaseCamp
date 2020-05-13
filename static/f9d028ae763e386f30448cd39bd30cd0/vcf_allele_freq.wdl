version 1.0

task VcfAlleleFreq.py {
  input {
    String? vcfVcf
  }
  command <<<
    vcf_allele_freq.py \
      ~{vcfVcf}
  >>>
}