version 1.0

task SampleOverview {
  input {
    File inIn
    File outOut
    Int windowWindow
    String addAddCols
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    SampleOverview \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(windowWindow) then ("-window " +  '"' + windowWindow + '"') else ""} \
      ~{if defined(addAddCols) then ("-add_cols " +  '"' + addAddCols + '"') else ""} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}