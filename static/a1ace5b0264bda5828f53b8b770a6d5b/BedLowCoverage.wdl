version 1.0

task BedLowCoverage {
  input {
    File bamBam
    Int cutCutOff
    File inIn
    Boolean wgsWgs
    File outOut
    Int minMinMapq
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    BedLowCoverage \
      ~{if defined(bamBam) then ("-bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(cutCutOff) then ("-cutoff " +  '"' + cutCutOff + '"') else ""} \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{true="-wgs" false="" wgsWgs} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(minMinMapq) then ("-min_mapq " +  '"' + minMinMapq + '"') else ""} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}