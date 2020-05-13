version 1.0

task FastutilsFormat {
  input {
    String inIn
    String outOut
    Int linewidthLinewidth
    Int minMinLen
    Int maxlenMaxlen
    Boolean fastFastQ
    Boolean nonNon
    Boolean commentComment
    Boolean digitalDigital
    Boolean keepKeep
    String prefixPrefix
    String suffixSuffix
    Boolean pacPacBio
    Boolean fofFofN
  }
  command <<<
    fastutils format \
      ~{if defined(inIn) then ("--in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(linewidthLinewidth) then ("--lineWidth " +  '"' + linewidthLinewidth + '"') else ""} \
      ~{if defined(minMinLen) then ("--minLen " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(maxlenMaxlen) then ("--maxLen " +  '"' + maxlenMaxlen + '"') else ""} \
      ~{true="--fastq" false="" fastFastQ} \
      ~{true="--noN" false="" nonNon} \
      ~{true="--comment" false="" commentComment} \
      ~{true="--digital" false="" digitalDigital} \
      ~{true="--keep" false="" keepKeep} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(suffixSuffix) then ("--suffix " +  '"' + suffixSuffix + '"') else ""} \
      ~{true="--pacbio" false="" pacPacBio} \
      ~{true="--fofn" false="" fofFofN}
  >>>
}