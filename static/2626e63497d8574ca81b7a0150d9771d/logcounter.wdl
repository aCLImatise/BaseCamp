version 1.0

task Logcounter {
  input {
    String threadsThreads
    String kmKmEr
    String seedSeed
    String bloomBloomSize
    Boolean chastityChastity
    Boolean noNoChastity
    Boolean trimTrimMasked
    Boolean noNoTrimMasked
    String trimTrimQuality
    Boolean standardStandardQuality
    Boolean illuminaIlluminaQuality
    Boolean verboseVerbose
  }
  command <<<
    logcounter \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(bloomBloomSize) then ("--bloom-size " +  '"' + bloomBloomSize + '"') else ""} \
      ~{true="--chastity" false="" chastityChastity} \
      ~{true="--no-chastity" false="" noNoChastity} \
      ~{true="--trim-masked" false="" trimTrimMasked} \
      ~{true="--no-trim-masked" false="" noNoTrimMasked} \
      ~{if defined(trimTrimQuality) then ("--trim-quality " +  '"' + trimTrimQuality + '"') else ""} \
      ~{true="--standard-quality" false="" standardStandardQuality} \
      ~{true="--illumina-quality" false="" illuminaIlluminaQuality} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}