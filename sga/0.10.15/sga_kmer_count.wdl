version 1.0

task SgaKmerCount {
  input {
    String kmKmErSize
    String sampleSampleRate
    String cacheCacheLength
  }
  command <<<
    sga kmer-count \
      ~{if defined(kmKmErSize) then ("--kmer-size " +  '"' + kmKmErSize + '"') else ""} \
      ~{if defined(sampleSampleRate) then ("--sample-rate " +  '"' + sampleSampleRate + '"') else ""} \
      ~{if defined(cacheCacheLength) then ("--cache-length " +  '"' + cacheCacheLength + '"') else ""}
  >>>
}