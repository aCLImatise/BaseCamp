version 1.0

task PhyluceSnpSummarizeVcfFile {
  input {
    File? vcf_file_process
  }
  command <<<
    phyluce_snp_summarize_vcf_file \
      ~{if defined(vcf_file_process) then ("--input " +  '"' + vcf_file_process + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    vcf_file_process: "The vcf file to process"
  }
  output {
    File out_stdout = stdout()
  }
}