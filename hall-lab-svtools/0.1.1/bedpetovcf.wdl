version 1.0

task Bedpetovcf {
  input {
    String? bed_pe
    String? output_vcf_write
  }
  command <<<
    bedpetovcf \
      ~{if defined(bed_pe) then ("--bedpe " +  '"' + bed_pe + '"') else ""} \
      ~{if defined(output_vcf_write) then ("--output " +  '"' + output_vcf_write + '"') else ""}
  >>>
  parameter_meta {
    bed_pe: "BEDPE input (default: stdin)"
    output_vcf_write: "Output VCF to write (default: stdout)"
  }
}