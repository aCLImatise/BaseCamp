version 1.0

task Hisat2ExtractSnpsHaplotypesVCF.pyBaseFname {
  input {
    String his_at_two_extract_snps_haplotypes_vcf_do_tpy
  }
  command <<<
    hisat2_extract_snps_haplotypes_VCF.py base_fname \
      ~{his_at_two_extract_snps_haplotypes_vcf_do_tpy}
  >>>
  parameter_meta {
    his_at_two_extract_snps_haplotypes_vcf_do_tpy: ""
  }
}