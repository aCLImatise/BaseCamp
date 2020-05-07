version 1.0

task MakeNodeGraph.py {
  input {
    String fpFpRate
    Int intersectIntersectNodeGraph
    String kKSize
    String threadsThreads
    String? inInFile
    String? outOutDir
  }
  command <<<
    MakeNodeGraph.py \
      ~{inInFile} \
      ~{if defined(fpFpRate) then ("--fp_rate " +  '"' + fpFpRate + '"') else ""} \
      ~{if defined(intersectIntersectNodeGraph) then ("--intersect_nodegraph " +  '"' + intersectIntersectNodeGraph + '"') else ""} \
      ~{if defined(kKSize) then ("--k_size " +  '"' + kKSize + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{outOutDir}
  >>>
}