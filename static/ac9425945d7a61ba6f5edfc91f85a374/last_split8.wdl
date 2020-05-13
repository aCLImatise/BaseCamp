version 1.0

task LastSplit8 {
  input {
    String formatFormat
    String genomeGenome
    String directionDirection
    String cisCis
    String transTrans
    String meanMean
    String sdevSdev
    String misMisMap
    Int scoreScore
    Boolean noNoSplit
    String bytesBytes
    Boolean verboseVerbose
    String? lastLastAlignmentsMaf
  }
  command <<<
    last-split8 \
      ~{lastLastAlignmentsMaf} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(directionDirection) then ("--direction " +  '"' + directionDirection + '"') else ""} \
      ~{if defined(cisCis) then ("--cis " +  '"' + cisCis + '"') else ""} \
      ~{if defined(transTrans) then ("--trans " +  '"' + transTrans + '"') else ""} \
      ~{if defined(meanMean) then ("--mean " +  '"' + meanMean + '"') else ""} \
      ~{if defined(sdevSdev) then ("--sdev " +  '"' + sdevSdev + '"') else ""} \
      ~{if defined(misMisMap) then ("--mismap " +  '"' + misMisMap + '"') else ""} \
      ~{if defined(scoreScore) then ("--score " +  '"' + scoreScore + '"') else ""} \
      ~{true="--no-split" false="" noNoSplit} \
      ~{if defined(bytesBytes) then ("--bytes " +  '"' + bytesBytes + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}