version 1.0

task SgaGapfill {
  input {
    Boolean verboseVerbose
    String prefixPrefix
    String startStartKmEr
    String endEndKmEr
    String kmKmErThreshold
    String threadsThreads
    String sampleSampleRate
    String? optionOption
    String? scaffoldsScaffoldsFa
  }
  command <<<
    sga gapfill \
      ~{optionOption} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(startStartKmEr) then ("--start-kmer " +  '"' + startStartKmEr + '"') else ""} \
      ~{if defined(endEndKmEr) then ("--end-kmer " +  '"' + endEndKmEr + '"') else ""} \
      ~{if defined(kmKmErThreshold) then ("--kmer-threshold " +  '"' + kmKmErThreshold + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(sampleSampleRate) then ("--sample-rate " +  '"' + sampleSampleRate + '"') else ""} \
      ~{scaffoldsScaffoldsFa}
  >>>
}