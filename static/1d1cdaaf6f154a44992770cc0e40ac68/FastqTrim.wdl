version 1.0

task FastqTrim {
  input {
    File inIn
    File outOut
    Int startStart
    Int endEnd
    Int lenLen
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    FastqTrim \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(startStart) then ("-start " +  '"' + startStart + '"') else ""} \
      ~{if defined(endEnd) then ("-end " +  '"' + endEnd + '"') else ""} \
      ~{if defined(lenLen) then ("-len " +  '"' + lenLen + '"') else ""} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}