version 1.0

task BamToFastq {
  input {
    File inIn
    File out1Out1
    File out2Out2
    Boolean removeRemoveDuplicates
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    BamToFastq \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(out1Out1) then ("-out1 " +  '"' + out1Out1 + '"') else ""} \
      ~{if defined(out2Out2) then ("-out2 " +  '"' + out2Out2 + '"') else ""} \
      ~{true="-remove_duplicates" false="" removeRemoveDuplicates} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}