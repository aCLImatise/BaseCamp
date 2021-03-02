version 1.0

task Hisat2ExtractSnpsHaplotypesUCSCpyGenomeFile {
  input {
    String? inter_gap
    Int his_at_two_extract_snps_haplotypes_ucsc_do_tpy
  }
  command <<<
    hisat2_extract_snps_haplotypes_UCSC_py genome_file \
      ~{his_at_two_extract_snps_haplotypes_ucsc_do_tpy} \
      ~{if defined(inter_gap) then ("--inter-gap " +  '"' + inter_gap + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hisat2:2.2.1--he1b5a44_1"
  }
  parameter_meta {
    inter_gap: ""
    his_at_two_extract_snps_haplotypes_ucsc_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}