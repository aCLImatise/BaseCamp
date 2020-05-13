version 1.0

task BedAnnotateGenes {
  input {
    File inIn
    File outOut
    Int extendExtend
    Boolean testTest
    Boolean clearClear
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    BedAnnotateGenes \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(extendExtend) then ("-extend " +  '"' + extendExtend + '"') else ""} \
      ~{true="-test" false="" testTest} \
      ~{true="-clear" false="" clearClear} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}