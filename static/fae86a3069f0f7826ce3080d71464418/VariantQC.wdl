version 1.0

task VariantQC {
  input {
    File inIn
    Boolean ignoreIgnoreFilter
    File outOut
    Boolean txtTxt
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    VariantQC \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{true="-ignore_filter" false="" ignoreIgnoreFilter} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-txt" false="" txtTxt} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}