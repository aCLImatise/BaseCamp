version 1.0

task CathCluster {
  input {
    Boolean vV
    String linkLinkDirN
    String columnColumnIdx
    File namesNamesInFile
    String levelsLevels
    File clustersClustersToFile
    File mergesMergesToFile
    File clustClustSpansToFile
    File repsRepsToFile
    String? inputInputFile
  }
  command <<<
    cath-cluster \
      ~{inputInputFile} \
      ~{true="-v" false="" vV} \
      ~{if defined(linkLinkDirN) then ("--link-dirn " +  '"' + linkLinkDirN + '"') else ""} \
      ~{if defined(columnColumnIdx) then ("--column-idx " +  '"' + columnColumnIdx + '"') else ""} \
      ~{if defined(namesNamesInFile) then ("--names-infile " +  '"' + namesNamesInFile + '"') else ""} \
      ~{if defined(levelsLevels) then ("--levels " +  '"' + levelsLevels + '"') else ""} \
      ~{if defined(clustersClustersToFile) then ("--clusters-to-file " +  '"' + clustersClustersToFile + '"') else ""} \
      ~{if defined(mergesMergesToFile) then ("--merges-to-file " +  '"' + mergesMergesToFile + '"') else ""} \
      ~{if defined(clustClustSpansToFile) then ("--clust-spans-to-file " +  '"' + clustClustSpansToFile + '"') else ""} \
      ~{if defined(repsRepsToFile) then ("--reps-to-file " +  '"' + repsRepsToFile + '"') else ""}
  >>>
}