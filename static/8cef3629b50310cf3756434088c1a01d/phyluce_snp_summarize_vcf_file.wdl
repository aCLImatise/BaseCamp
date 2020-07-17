version 1.0

task PhyluceSnpSummarizeVcfFile {
  input {
    String? vcf_file_process
  }
  command <<<
    phyluce_snp_summarize_vcf_file \
      ~{if defined(vcf_file_process) then ("--input " +  '"' + vcf_file_process + '"') else ""}
  >>>
  parameter_meta {
    vcf_file_process: "The vcf file to process"
  }
}