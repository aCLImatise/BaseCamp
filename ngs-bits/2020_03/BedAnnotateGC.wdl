version 1.0

task BedAnnotateGC {
  input {
    File inIn
    File outOut
    File refRef
    Int extendExtend
    Boolean clearClear
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    BedAnnotateGC \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(refRef) then ("-ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(extendExtend) then ("-extend " +  '"' + extendExtend + '"') else ""} \
      ~{true="-clear" false="" clearClear} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}