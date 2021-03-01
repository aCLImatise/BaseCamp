version 1.0

task SvtoolsBedpetovcf {
  input {
    String? bedpe_input_default
    String? output_vcf_write
    File? tempdir
  }
  command <<<
    svtools bedpetovcf \
      ~{if defined(bedpe_input_default) then ("--input " +  '"' + bedpe_input_default + '"') else ""} \
      ~{if defined(output_vcf_write) then ("--output " +  '"' + output_vcf_write + '"') else ""} \
      ~{if defined(tempdir) then ("--tempdir " +  '"' + tempdir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bedpe_input_default: "BEDPE input (default: stdin)"
    output_vcf_write: "Output VCF to write (default: stdout)"
    tempdir: "Directory for temp file downloads"
  }
  output {
    File out_stdout = stdout()
  }
}