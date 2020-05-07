version 1.0

task Mosdepth {
  input {
    String threadsThreads
    String chromChrom
    Boolean byBy
    Boolean noNoPerBase
    String fastFastA
    String flagFlag
    String includeIncludeFlag
    Boolean fastFastMode
    String quantizeQuantize
    String mapqMapq
    String thresholdsThresholds
    Boolean useUseMedian
    String readReadGroups
    String? prefixPrefix
    String? bamBamOrCram
  }
  command <<<
    mosdepth \
      ~{prefixPrefix} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(chromChrom) then ("--chrom " +  '"' + chromChrom + '"') else ""} \
      ~{true="--by" false="" byBy} \
      ~{true="--no-per-base" false="" noNoPerBase} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(flagFlag) then ("--flag " +  '"' + flagFlag + '"') else ""} \
      ~{if defined(includeIncludeFlag) then ("--include-flag " +  '"' + includeIncludeFlag + '"') else ""} \
      ~{true="--fast-mode" false="" fastFastMode} \
      ~{if defined(quantizeQuantize) then ("--quantize " +  '"' + quantizeQuantize + '"') else ""} \
      ~{if defined(mapqMapq) then ("--mapq " +  '"' + mapqMapq + '"') else ""} \
      ~{if defined(thresholdsThresholds) then ("--thresholds " +  '"' + thresholdsThresholds + '"') else ""} \
      ~{true="--use-median" false="" useUseMedian} \
      ~{if defined(readReadGroups) then ("--read-groups " +  '"' + readReadGroups + '"') else ""} \
      ~{bamBamOrCram}
  >>>
}