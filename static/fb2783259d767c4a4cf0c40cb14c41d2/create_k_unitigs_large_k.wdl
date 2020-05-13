version 1.0

task CreateKUnitigsLargeK {
  input {
    Int merMer
    String nbNbMers
    Int threadsThreads
    File outputOutput
    String qualityQualityThreshold
    String contContOnLow
    String minMinLen
    Boolean gzipGzip
    String falseFalsePositive
    File loadLoad
  }
  command <<<
    create_k_unitigs_large_k \
      ~{if defined(merMer) then ("--mer " +  '"' + merMer + '"') else ""} \
      ~{if defined(nbNbMers) then ("--nb-mers " +  '"' + nbNbMers + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(qualityQualityThreshold) then ("--quality-threshold " +  '"' + qualityQualityThreshold + '"') else ""} \
      ~{if defined(contContOnLow) then ("--cont-on-low " +  '"' + contContOnLow + '"') else ""} \
      ~{if defined(minMinLen) then ("--min-len " +  '"' + minMinLen + '"') else ""} \
      ~{true="--gzip" false="" gzipGzip} \
      ~{if defined(falseFalsePositive) then ("--false-positive " +  '"' + falseFalsePositive + '"') else ""} \
      ~{if defined(loadLoad) then ("--load " +  '"' + loadLoad + '"') else ""}
  >>>
}