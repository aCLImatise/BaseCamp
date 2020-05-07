version 1.0

task DoPartition.py {
  input {
    Boolean infoInfo
    String kKSize
    String uniqueUniqueKmErs
    String fpFpRate
    Int maxMaxMemoryUsage
    String threadsThreads
    String subsetSubsetSize
    Boolean noNoBigTraverse
    Boolean keepKeepSubsets
    Boolean forceForce
    String? graphGraphBase
    String? inputInputSequenceFilename
  }
  command <<<
    do-partition.py \
      ~{graphGraphBase} \
      ~{true="--info" false="" infoInfo} \
      ~{if defined(kKSize) then ("--ksize " +  '"' + kKSize + '"') else ""} \
      ~{if defined(uniqueUniqueKmErs) then ("--unique-kmers " +  '"' + uniqueUniqueKmErs + '"') else ""} \
      ~{if defined(fpFpRate) then ("--fp-rate " +  '"' + fpFpRate + '"') else ""} \
      ~{if defined(maxMaxMemoryUsage) then ("--max-memory-usage " +  '"' + maxMaxMemoryUsage + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(subsetSubsetSize) then ("--subset-size " +  '"' + subsetSubsetSize + '"') else ""} \
      ~{true="--no-big-traverse" false="" noNoBigTraverse} \
      ~{true="--keep-subsets" false="" keepKeepSubsets} \
      ~{true="--force" false="" forceForce} \
      ~{inputInputSequenceFilename}
  >>>
}