version 1.0

task SvtoolsVcftobedpe {
  input {
    String? vcf_input_default
    String? output_bedpe_write
    File? tempdir
  }
  command <<<
    svtools vcftobedpe \
      ~{if defined(vcf_input_default) then ("--input " +  '"' + vcf_input_default + '"') else ""} \
      ~{if defined(output_bedpe_write) then ("--output " +  '"' + output_bedpe_write + '"') else ""} \
      ~{if defined(tempdir) then ("--tempdir " +  '"' + tempdir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    vcf_input_default: "VCF input (default: stdin)"
    output_bedpe_write: "output BEDPE to write (default: stdout)"
    tempdir: "Directory for temp file downloads"
  }
  output {
    File out_stdout = stdout()
  }
}