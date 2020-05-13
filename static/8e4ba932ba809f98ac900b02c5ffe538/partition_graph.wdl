version 1.0

task PartitionGraph.py {
  input {
    Boolean infoInfo
    File stopStopTags
    String subsetSubsetSize
    Boolean noNoBigTraverse
    Boolean forceForce
    String threadsThreads
    String? basenameBasename
  }
  command <<<
    partition-graph.py \
      ~{basenameBasename} \
      ~{true="--info" false="" infoInfo} \
      ~{if defined(stopStopTags) then ("--stoptags " +  '"' + stopStopTags + '"') else ""} \
      ~{if defined(subsetSubsetSize) then ("--subset-size " +  '"' + subsetSubsetSize + '"') else ""} \
      ~{true="--no-big-traverse" false="" noNoBigTraverse} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}