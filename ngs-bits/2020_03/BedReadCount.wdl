version 1.0

task BedReadCount {
  input {
    File bamBam
    Int minMinMapq
    File inIn
    File outOut
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    BedReadCount \
      ~{if defined(bamBam) then ("-bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(minMinMapq) then ("-min_mapq " +  '"' + minMinMapq + '"') else ""} \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}