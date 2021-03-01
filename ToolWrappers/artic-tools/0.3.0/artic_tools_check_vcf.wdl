version 1.0

task ArtictoolsCheckVcf {
  input {
    String? summary_out
    File? vcf_out
    Float? min_qual
    String vcf
    String scheme
  }
  command <<<
    artic_tools check_vcf \
      ~{vcf} \
      ~{scheme} \
      ~{if defined(summary_out) then ("--summaryOut " +  '"' + summary_out + '"') else ""} \
      ~{if defined(vcf_out) then ("--vcfOut " +  '"' + vcf_out + '"') else ""} \
      ~{if defined(min_qual) then ("--minQual " +  '"' + min_qual + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/artic-tools:0.3.0--hee4d88c_0"
  }
  parameter_meta {
    summary_out: "REQUIRED\\nSummary of variant checks will be written here (TSV format)"
    vcf_out: "If provided, will write variants that pass checks to this file"
    min_qual: "Minimum quality score to keep a variant (default = 10)"
    vcf: ""
    scheme: ""
  }
  output {
    File out_stdout = stdout()
  }
}