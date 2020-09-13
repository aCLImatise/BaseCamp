version 1.0

task SvtoolsBedpetovcf {
  input {
    String? bedpe_input_stdin
    String? output_vcf_write
    File? tempdir
  }
  command <<<
    svtools bedpetovcf \
      ~{if defined(bedpe_input_stdin) then ("--input " +  '"' + bedpe_input_stdin + '"') else ""} \
      ~{if defined(output_vcf_write) then ("--output " +  '"' + output_vcf_write + '"') else ""} \
      ~{if defined(tempdir) then ("--tempdir " +  '"' + tempdir + '"') else ""}
  >>>
  parameter_meta {
    bedpe_input_stdin: "BEDPE input (default: stdin)"
    output_vcf_write: "Output VCF to write (default: stdout)"
    tempdir: "Directory for temp file downloads"
  }
  output {
    File out_stdout = stdout()
  }
}