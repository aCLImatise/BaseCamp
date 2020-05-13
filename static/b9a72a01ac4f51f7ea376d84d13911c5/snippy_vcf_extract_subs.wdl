version 1.0

task SnippyVcfExtractSubs {
  input {
    Boolean debugDebug
    String refRef
    Boolean haploidHaploid
    String infoInfoTags
    String formatFormatTags
    String filterFilter
  }
  command <<<
    snippy-vcf_extract_subs \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{true="--haploid" false="" haploidHaploid} \
      ~{if defined(infoInfoTags) then ("--info-tags " +  '"' + infoInfoTags + '"') else ""} \
      ~{if defined(formatFormatTags) then ("--format-tags " +  '"' + formatFormatTags + '"') else ""} \
      ~{if defined(filterFilter) then ("--filter " +  '"' + filterFilter + '"') else ""}
  >>>
}