version 1.0

task GalahClusterValidateOPTIONS {
  input {
    String clusterClusterFile
  }
  command <<<
    galah cluster-validate OPTIONS \
      ~{if defined(clusterClusterFile) then ("--cluster-file " +  '"' + clusterClusterFile + '"') else ""}
  >>>
}