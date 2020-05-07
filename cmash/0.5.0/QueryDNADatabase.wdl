version 1.0

task QueryDNADatabase.py {
  input {
    String threadsThreads
    Boolean forceForce
    String fpFpRate
    String containmentContainmentThreshold
    String confidenceConfidence
    String nodeNodeGraph
    Boolean baseBaseName
    Boolean intersectIntersectNodeGraph
    String? inInFile
    String? trainingTrainingData
    String? outOutCsv
  }
  command <<<
    QueryDNADatabase.py \
      ~{inInFile} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(fpFpRate) then ("--fp_rate " +  '"' + fpFpRate + '"') else ""} \
      ~{if defined(containmentContainmentThreshold) then ("--containment_threshold " +  '"' + containmentContainmentThreshold + '"') else ""} \
      ~{if defined(confidenceConfidence) then ("--confidence " +  '"' + confidenceConfidence + '"') else ""} \
      ~{if defined(nodeNodeGraph) then ("--node_graph " +  '"' + nodeNodeGraph + '"') else ""} \
      ~{true="--base_name" false="" baseBaseName} \
      ~{true="--intersect_nodegraph" false="" intersectIntersectNodeGraph} \
      ~{trainingTrainingData} \
      ~{outOutCsv}
  >>>
}