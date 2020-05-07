version 1.0

task SamplingUtilsSample {
  input {
    String prefixPrefix
    Int numberNumber
    Float probProb
    Int maxMaxSeq
    Boolean fastFastQ
    Boolean gzipGzip
  }
  command <<<
    sampling-utils sample \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(numberNumber) then ("--number " +  '"' + numberNumber + '"') else ""} \
      ~{if defined(probProb) then ("--prob " +  '"' + probProb + '"') else ""} \
      ~{if defined(maxMaxSeq) then ("--max-seq " +  '"' + maxMaxSeq + '"') else ""} \
      ~{true="--fastq" false="" fastFastQ} \
      ~{true="--gzip" false="" gzipGzip}
  >>>
}