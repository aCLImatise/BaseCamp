version 1.0

task PhyluceSnpScreenVcfFiles {
  input {
    File? vcf_file_process
    File? vcf_file_write
    String? complete
  }
  command <<<
    phyluce_snp_screen_vcf_files \
      ~{if defined(vcf_file_process) then ("--input " +  '"' + vcf_file_process + '"') else ""} \
      ~{if defined(vcf_file_write) then ("--output " +  '"' + vcf_file_write + '"') else ""} \
      ~{if defined(complete) then ("--complete " +  '"' + complete + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    vcf_file_process: "The vcf file to process"
    vcf_file_write: "The vcf file to write"
    complete: "The percentage of missing data to allow."
  }
  output {
    File out_stdout = stdout()
  }
}