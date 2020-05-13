version 1.0

task RunHiCpca.pl {
  input {
    Boolean resRes
    Boolean windowWindow
    Boolean activeActive
    String inactiveInactive
    String genomeGenome
    Boolean corrCorrDepth
    Boolean stdStd
    Boolean minMin
    File rpathRpath
    Boolean pcPc
    Boolean cpuCpu
    Boolean customCustomRegions
    Boolean clusterCluster
    Boolean minMinP
  }
  command <<<
    runHiCpca.pl \
      ~{true="-res" false="" resRes} \
      ~{true="-window" false="" windowWindow} \
      ~{true="-active" false="" activeActive} \
      ~{if defined(inactiveInactive) then ("-inactive " +  '"' + inactiveInactive + '"') else ""} \
      ~{if defined(genomeGenome) then ("-genome " +  '"' + genomeGenome + '"') else ""} \
      ~{true="-corrDepth" false="" corrCorrDepth} \
      ~{true="-std" false="" stdStd} \
      ~{true="-min" false="" minMin} \
      ~{if defined(rpathRpath) then ("-rpath " +  '"' + rpathRpath + '"') else ""} \
      ~{true="-pc" false="" pcPc} \
      ~{true="-cpu" false="" cpuCpu} \
      ~{true="-customRegions" false="" customCustomRegions} \
      ~{true="-cluster" false="" clusterCluster} \
      ~{true="-minp" false="" minMinP}
  >>>
}