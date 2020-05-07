version 1.0

task PhyluceSnpSummarizeVcfFile {
  input {
    String inputInput
  }
  command <<<
    phyluce_snp_summarize_vcf_file \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""}
  >>>
}