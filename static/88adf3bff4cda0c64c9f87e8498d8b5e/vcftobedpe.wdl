version 1.0

task Vcftobedpe {
  input {
    String? vcf_input_default
    String? output_bedpe_write
    String? confidence
  }
  command <<<
    vcftobedpe \
      ~{if defined(vcf_input_default) then ("--input " +  '"' + vcf_input_default + '"') else ""} \
      ~{if defined(output_bedpe_write) then ("--output " +  '"' + output_bedpe_write + '"') else ""} \
      ~{if defined(confidence) then ("--confidence " +  '"' + confidence + '"') else ""}
  >>>
  parameter_meta {
    vcf_input_default: "VCF input (default: stdin)"
    output_bedpe_write: "Output BEDPE to write (default: stdout)"
    confidence: "Confidence interval to be added in case absent in the input VCF. If absent and value not provided by user, it adds 1 base"
  }
}