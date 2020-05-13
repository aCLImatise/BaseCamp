version 1.0

task CdsSubgraphs {
  input {
    String outputOutputFolder
    File partPartDesc
    File partPartSeq
    String graphGraph
    File cdsCdsLenEst
    String kK
    String threadsThreads
    String tmpdirTmpdir
  }
  command <<<
    cds-subgraphs \
      ~{if defined(outputOutputFolder) then ("--output-folder " +  '"' + outputOutputFolder + '"') else ""} \
      ~{if defined(partPartDesc) then ("--part-desc " +  '"' + partPartDesc + '"') else ""} \
      ~{if defined(partPartSeq) then ("--part-seq " +  '"' + partPartSeq + '"') else ""} \
      ~{if defined(graphGraph) then ("--graph " +  '"' + graphGraph + '"') else ""} \
      ~{if defined(cdsCdsLenEst) then ("--cds-len-est " +  '"' + cdsCdsLenEst + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(tmpdirTmpdir) then ("--tmpdir " +  '"' + tmpdirTmpdir + '"') else ""}
  >>>
}