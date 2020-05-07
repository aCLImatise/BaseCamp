version 1.0

task TsvFilter {
  input {
    String filterFilter
    File inIn
    File outOut
    Boolean numericNumeric
    Boolean vV
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    TsvFilter \
      ~{if defined(filterFilter) then ("-filter " +  '"' + filterFilter + '"') else ""} \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-numeric" false="" numericNumeric} \
      ~{true="-v" false="" vV} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}