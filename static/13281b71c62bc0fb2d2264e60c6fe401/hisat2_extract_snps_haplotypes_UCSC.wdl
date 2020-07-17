version 1.0

task Hisat2ExtractSnpsHaplotypesUCSC.pyBaseFname {
  input {
    Int? inter_gap
    String his_at_two_extract_snps_haplotypes_ucsc_do_tpy
  }
  command <<<
    hisat2_extract_snps_haplotypes_UCSC.py base_fname \
      ~{his_at_two_extract_snps_haplotypes_ucsc_do_tpy} \
      ~{if defined(inter_gap) then ("--inter-gap " +  '"' + inter_gap + '"') else ""}
  >>>
  parameter_meta {
    inter_gap: ""
    his_at_two_extract_snps_haplotypes_ucsc_do_tpy: ""
  }
}