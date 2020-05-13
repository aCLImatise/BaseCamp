version 1.0

task TsvMerge {
  input {
    File inIn
    String colsCols
    File outOut
    Boolean numericNumeric
    Boolean simpleSimple
    String mvMv
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    TsvMerge \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(colsCols) then ("-cols " +  '"' + colsCols + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-numeric" false="" numericNumeric} \
      ~{true="-simple" false="" simpleSimple} \
      ~{if defined(mvMv) then ("-mv " +  '"' + mvMv + '"') else ""} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}