version 1.0

task Slclust {
  input {
    String jJ
    String? optsOpts
    File? fileFileOfPairs
    String? clustersClusters
  }
  command <<<
    slclust \
      ~{optsOpts} \
      ~{if defined(jJ) then ("-j " +  '"' + jJ + '"') else ""} \
      ~{fileFileOfPairs} \
      ~{clustersClusters}
  >>>
}