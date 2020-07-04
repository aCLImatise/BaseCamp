version 1.0

task WhatshapHapcut2vcf {
  input {
    String? output_vcf_file
    String vcf
    String hap_cut_result
  }
  command <<<
    whatshap hapcut2vcf \
      ~{vcf} \
      ~{hap_cut_result} \
      ~{if defined(output_vcf_file) then ("--output " +  '"' + output_vcf_file + '"') else ""}
  >>>
  parameter_meta {
    output_vcf_file: "Output VCF file. If omitted, use standard output."
    vcf: "VCF file"
    hap_cut_result: "hapCUT result file"
  }
}