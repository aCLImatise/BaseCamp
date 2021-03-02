version 1.0

task SlivarDdc {
  input {
    Int? chrom
    String? info_fields
    String? fmt_fields
    File? html
    String vcf
  }
  command <<<
    slivar ddc \
      ~{vcf} \
      ~{if defined(chrom) then ("--chrom " +  '"' + chrom + '"') else ""} \
      ~{if defined(info_fields) then ("--info-fields " +  '"' + info_fields + '"') else ""} \
      ~{if defined(fmt_fields) then ("--fmt-fields " +  '"' + fmt_fields + '"') else ""} \
      ~{if defined(html) then ("--html " +  '"' + html + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/slivar:0.2.1--hecda079_0"
  }
  parameter_meta {
    chrom: "limit to this chromosome only. use '-3' for all chromosomes (in the case of exome data) (default: chr15)"
    info_fields: "comma-delimited list of info fields"
    fmt_fields: "comma-delimited list of sample fields"
    html: "path to output file (default: slivar-ddc.html)"
    vcf: "ped"
  }
  output {
    File out_stdout = stdout()
    File out_html = "${in_html}"
  }
}