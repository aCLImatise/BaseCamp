version 1.0

task SvtoolsBedpetovcf {
  input {
    String? input_default_stdin
    String? output_vcf_write
    String? tempdir
  }
  command <<<
    svtools bedpetovcf \
      ~{if defined(input_default_stdin) then ("--input " +  '"' + input_default_stdin + '"') else ""} \
      ~{if defined(output_vcf_write) then ("--output " +  '"' + output_vcf_write + '"') else ""} \
      ~{if defined(tempdir) then ("--tempdir " +  '"' + tempdir + '"') else ""}
  >>>
  parameter_meta {
    input_default_stdin: "BEDPE input (default: stdin)"
    output_vcf_write: "Output VCF to write (default: stdout)"
    tempdir: "Directory for temp file downloads"
  }
}