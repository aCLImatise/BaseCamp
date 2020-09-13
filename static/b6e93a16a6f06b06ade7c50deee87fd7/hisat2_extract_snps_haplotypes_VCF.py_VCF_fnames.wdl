version 1.0

task Hisat2ExtractSnpsHaplotypesVCFpyVCFFnames {
  input {
    Int his_at_two_extract_snps_haplotypes_vcf_do_tpy
  }
  command <<<
    hisat2_extract_snps_haplotypes_VCF_py VCF_fnames \
      ~{his_at_two_extract_snps_haplotypes_vcf_do_tpy}
  >>>
  parameter_meta {
    his_at_two_extract_snps_haplotypes_vcf_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}