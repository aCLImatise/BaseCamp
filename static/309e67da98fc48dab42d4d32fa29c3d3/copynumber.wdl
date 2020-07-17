version 1.0

task Copynumber {
  input {
    String? input_vcf
    String? coordinates
    String? root
    String? window
    String? sample
    String? cnv_nator
    String? output_vcf
    Boolean? debug
  }
  command <<<
    copynumber \
      ~{if defined(input_vcf) then ("--input_vcf " +  '"' + input_vcf + '"') else ""} \
      ~{if defined(coordinates) then ("--coordinates " +  '"' + coordinates + '"') else ""} \
      ~{if defined(root) then ("--root " +  '"' + root + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(cnv_nator) then ("--cnvnator " +  '"' + cnv_nator + '"') else ""} \
      ~{if defined(output_vcf) then ("--output_vcf " +  '"' + output_vcf + '"') else ""} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    input_vcf: "VCF input"
    coordinates: "BED input"
    root: "CNVnator .root histogram file (required)"
    window: "CNVnator window size (required)"
    sample: "sample to annotate"
    cnv_nator: "path to cnvnator-multi binary"
    output_vcf: "compressed(.gz) output VCF to write (default: stdout)"
    debug: "debugging verbosity"
  }
}