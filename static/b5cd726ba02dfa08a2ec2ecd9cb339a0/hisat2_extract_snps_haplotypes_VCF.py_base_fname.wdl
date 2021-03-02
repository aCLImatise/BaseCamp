version 1.0

task Hisat2ExtractSnpsHaplotypesVCFpyBaseFname {
  input {
    Int his_at_two_extract_snps_haplotypes_vcf_do_tpy
  }
  command <<<
    hisat2_extract_snps_haplotypes_VCF_py base_fname \
      ~{his_at_two_extract_snps_haplotypes_vcf_do_tpy}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hisat2:2.2.1--he1b5a44_1"
  }
  parameter_meta {
    his_at_two_extract_snps_haplotypes_vcf_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}