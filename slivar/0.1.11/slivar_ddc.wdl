version 1.0

task SlivarDdc {
  input {
    String chromChrom
    String infoInfoFields
    String fmtFmtFields
    String htmlHtml
    String? vcfVcf
    String? pedPed
  }
  command <<<
    slivar ddc \
      ~{vcfVcf} \
      ~{if defined(chromChrom) then ("--chrom " +  '"' + chromChrom + '"') else ""} \
      ~{if defined(infoInfoFields) then ("--info-fields " +  '"' + infoInfoFields + '"') else ""} \
      ~{if defined(fmtFmtFields) then ("--fmt-fields " +  '"' + fmtFmtFields + '"') else ""} \
      ~{if defined(htmlHtml) then ("--html " +  '"' + htmlHtml + '"') else ""} \
      ~{pedPed}
  >>>
}