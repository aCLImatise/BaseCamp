version 1.0

task VcfToBedpe {
  input {
    File inIn
    File outOut
    Boolean noNoSort
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    VcfToBedpe \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-no_sort" false="" noNoSort} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}