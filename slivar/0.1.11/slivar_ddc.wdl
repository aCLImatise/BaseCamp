version 1.0

task SlivarDdc {
  input {
    String? chrom
    String? info_fields
    String? fmt_fields
    String? html
    String vcf
    String ped
  }
  command <<<
    slivar ddc \
      ~{vcf} \
      ~{ped} \
      ~{if defined(chrom) then ("--chrom " +  '"' + chrom + '"') else ""} \
      ~{if defined(info_fields) then ("--info-fields " +  '"' + info_fields + '"') else ""} \
      ~{if defined(fmt_fields) then ("--fmt-fields " +  '"' + fmt_fields + '"') else ""} \
      ~{if defined(html) then ("--html " +  '"' + html + '"') else ""}
  >>>
  parameter_meta {
    chrom: "limit to this chromosome only. use '-3' for all chromosomes (in the case of exome data) (default: chr15)"
    info_fields: "comma-delimited list of info fields"
    fmt_fields: "comma-delimited list of sample fields"
    html: "path to output file (default: slivar-ddc.html)"
    vcf: ""
    ped: ""
  }
}