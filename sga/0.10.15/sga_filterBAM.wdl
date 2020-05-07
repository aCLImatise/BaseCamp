version 1.0

task SgaFilterBAM {
  input {
    Boolean verboseVerbose
    File asAsQg
    String maxMaxDistance
    String errorErrorRate
    String minMinQuality
    File outOutBam
    String prefixPrefix
    String maxMaxKmErDepth
    Boolean mateMateContamination
  }
  command <<<
    sga filterBAM \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(asAsQg) then ("--asqg " +  '"' + asAsQg + '"') else ""} \
      ~{if defined(maxMaxDistance) then ("--max-distance " +  '"' + maxMaxDistance + '"') else ""} \
      ~{if defined(errorErrorRate) then ("--error-rate " +  '"' + errorErrorRate + '"') else ""} \
      ~{if defined(minMinQuality) then ("--min-quality " +  '"' + minMinQuality + '"') else ""} \
      ~{if defined(outOutBam) then ("--out-bam " +  '"' + outOutBam + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(maxMaxKmErDepth) then ("--max-kmer-depth " +  '"' + maxMaxKmErDepth + '"') else ""} \
      ~{true="--mate-contamination" false="" mateMateContamination}
  >>>
}