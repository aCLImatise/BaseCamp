version 1.0

task WhatshapHapcut2vcf {
  input {
    File? output_vcf_file
    String vcf
    String hap_cut_result
  }
  command <<<
    whatshap hapcut2vcf \
      ~{vcf} \
      ~{hap_cut_result} \
      ~{if defined(output_vcf_file) then ("--output " +  '"' + output_vcf_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/whatshap:1.1--py39h7cff6ad_0"
  }
  parameter_meta {
    output_vcf_file: "Output VCF file. If omitted, use standard output.\\n"
    vcf: "VCF file"
    hap_cut_result: "hapCUT result file"
  }
  output {
    File out_stdout = stdout()
    File out_output_vcf_file = "${in_output_vcf_file}"
  }
}