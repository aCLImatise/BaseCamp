version 1.0

task BedAnnotateFromBed {
  input {
    File in2In2
    File inIn
    File outOut
    Int colCol
    Boolean clearClear
    Boolean noNoDuplicates
    Boolean overlapOverlap
    Boolean urlUrlDecode
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    BedAnnotateFromBed \
      ~{if defined(in2In2) then ("-in2 " +  '"' + in2In2 + '"') else ""} \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(colCol) then ("-col " +  '"' + colCol + '"') else ""} \
      ~{true="-clear" false="" clearClear} \
      ~{true="-no_duplicates" false="" noNoDuplicates} \
      ~{true="-overlap" false="" overlapOverlap} \
      ~{true="-url_decode" false="" urlUrlDecode} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}