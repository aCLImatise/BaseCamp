version 1.0

task TsvSlice {
  input {
    String colsCols
    File inIn
    File outOut
    Boolean numericNumeric
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    TsvSlice \
      ~{if defined(colsCols) then ("-cols " +  '"' + colsCols + '"') else ""} \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-numeric" false="" numericNumeric} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}