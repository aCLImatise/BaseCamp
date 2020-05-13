version 1.0

task BedCoverage {
  input {
    File bamBam
    Int minMinMapq
    Boolean dupDup
    File inIn
    String modeMode
    Int decimalsDecimals
    File outOut
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    BedCoverage \
      ~{if defined(bamBam) then ("-bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(minMinMapq) then ("-min_mapq " +  '"' + minMinMapq + '"') else ""} \
      ~{true="-dup" false="" dupDup} \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(modeMode) then ("-mode " +  '"' + modeMode + '"') else ""} \
      ~{if defined(decimalsDecimals) then ("-decimals " +  '"' + decimalsDecimals + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}