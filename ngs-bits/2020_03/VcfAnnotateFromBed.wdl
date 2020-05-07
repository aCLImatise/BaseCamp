version 1.0

task VcfAnnotateFromBed {
  input {
    File bedBed
    String nameName
    File inIn
    File outOut
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    VcfAnnotateFromBed \
      ~{if defined(bedBed) then ("-bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(nameName) then ("-name " +  '"' + nameName + '"') else ""} \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}