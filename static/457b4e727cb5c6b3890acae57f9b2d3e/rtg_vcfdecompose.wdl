version 1.0

task RtgVcfdecompose {
  input {
    File? vcf_file_containing
    File? output_vcf_file
    String? template
    String? break_indels
    Boolean? break_mnps
    Boolean? no_gzip
    Boolean? no_header
    String against
  }
  command <<<
    rtg vcfdecompose \
      ~{against} \
      ~{if defined(vcf_file_containing) then ("--input " +  '"' + vcf_file_containing + '"') else ""} \
      ~{if defined(output_vcf_file) then ("--output " +  '"' + output_vcf_file + '"') else ""} \
      ~{if defined(template) then ("--template " +  '"' + template + '"') else ""} \
      ~{if defined(break_indels) then ("--break-indels " +  '"' + break_indels + '"') else ""} \
      ~{if (break_mnps) then "--break-mnps" else ""} \
      ~{if (no_gzip) then "--no-gzip" else ""} \
      ~{if (no_header) then "--no-header" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rtg-tools:3.12--0"
  }
  parameter_meta {
    vcf_file_containing: "VCF file containing variants to decompose. Use '-' to read\\nfrom standard input"
    output_vcf_file: "output VCF file name. Use '-' to write to standard output"
    template: "SDF of the reference genome the variants are called"
    break_indels: "set, peel as many SNPs off an indel as possible"
    break_mnps: "if set, break MNPs into individual SNPs"
    no_gzip: "do not gzip the output"
    no_header: "prevent VCF header from being written"
    against: "Sensitivity Tuning"
  }
  output {
    File out_stdout = stdout()
    File out_output_vcf_file = "${in_output_vcf_file}"
  }
}