version 1.0

task SamplingUtilsSampleStreamOPTIONS {
  input {
    Float probProb
    Int maxMaxSeq
    Boolean fastFastQ
  }
  command <<<
    sampling-utils sample_stream OPTIONS \
      ~{if defined(probProb) then ("--prob " +  '"' + probProb + '"') else ""} \
      ~{if defined(maxMaxSeq) then ("--max-seq " +  '"' + maxMaxSeq + '"') else ""} \
      ~{true="--fastq" false="" fastFastQ}
  >>>
}