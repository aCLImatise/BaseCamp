version 1.0

task LoadGraph.py {
  input {
    Boolean infoInfo
    String kKSize
    String uniqueUniqueKmErs
    String fpFpRate
    Int maxMaxMemoryUsage
    String threadsThreads
    Boolean noNoBuildTagset
    Boolean forceForce
    String? outputOutputNodeGraphFilename
    String? inputInputSequenceFilename
  }
  command <<<
    load-graph.py \
      ~{outputOutputNodeGraphFilename} \
      ~{true="--info" false="" infoInfo} \
      ~{if defined(kKSize) then ("--ksize " +  '"' + kKSize + '"') else ""} \
      ~{if defined(uniqueUniqueKmErs) then ("--unique-kmers " +  '"' + uniqueUniqueKmErs + '"') else ""} \
      ~{if defined(fpFpRate) then ("--fp-rate " +  '"' + fpFpRate + '"') else ""} \
      ~{if defined(maxMaxMemoryUsage) then ("--max-memory-usage " +  '"' + maxMaxMemoryUsage + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--no-build-tagset" false="" noNoBuildTagset} \
      ~{true="--force" false="" forceForce} \
      ~{inputInputSequenceFilename}
  >>>
}