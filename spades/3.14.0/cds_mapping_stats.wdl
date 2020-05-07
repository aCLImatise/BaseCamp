version 1.0

task CdsMappingStats {
  input {
    String kK
    String graphGraph
    File cdsCdsQueries
    File pathsPaths
    File edgeEdgeInfo
    String threadsThreads
    File colorsColors
    String workdirWorkdir
  }
  command <<<
    cds-mapping-stats \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(graphGraph) then ("--graph " +  '"' + graphGraph + '"') else ""} \
      ~{if defined(cdsCdsQueries) then ("--cds-queries " +  '"' + cdsCdsQueries + '"') else ""} \
      ~{if defined(pathsPaths) then ("--paths " +  '"' + pathsPaths + '"') else ""} \
      ~{if defined(edgeEdgeInfo) then ("--edge-info " +  '"' + edgeEdgeInfo + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(colorsColors) then ("--colors " +  '"' + colorsColors + '"') else ""} \
      ~{if defined(workdirWorkdir) then ("--workdir " +  '"' + workdirWorkdir + '"') else ""}
  >>>
}