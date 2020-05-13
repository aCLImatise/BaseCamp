version 1.0

task GalahClusterValidate {
  input {
    String aniAni
    String clusterClusterFile
    String threadsThreads
  }
  command <<<
    galah cluster-validate \
      ~{if defined(aniAni) then ("--ani " +  '"' + aniAni + '"') else ""} \
      ~{if defined(clusterClusterFile) then ("--cluster-file " +  '"' + clusterClusterFile + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}