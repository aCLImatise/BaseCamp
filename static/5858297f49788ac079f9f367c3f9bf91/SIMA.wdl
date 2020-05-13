version 1.0

task SIMA.pl {
  input {
    String dD
    String pP
    Boolean resRes
    Boolean windowWindow
    Boolean mindMindIst
    Boolean mindMindSize
    Boolean minMin
    Boolean maxMax
    String chrChr
    String p2P2
    Boolean avsAvsA
    Boolean nN
    Boolean rRDepth
    Boolean cpuCpu
    Boolean mergeMerge
    Boolean statStat
    Boolean pPValue
    Boolean minMinPeaks
    Boolean resRes
    String pP
    String p2P2
    String dDName
    String dname2Dname2
  }
  command <<<
    SIMA.pl \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-res" false="" resRes} \
      ~{true="-window" false="" windowWindow} \
      ~{true="-minDist" false="" mindMindIst} \
      ~{true="-minDsize" false="" mindMindSize} \
      ~{true="-min" false="" minMin} \
      ~{true="-max" false="" maxMax} \
      ~{if defined(chrChr) then ("-chr " +  '"' + chrChr + '"') else ""} \
      ~{if defined(p2P2) then ("-p2 " +  '"' + p2P2 + '"') else ""} \
      ~{true="-AvsA" false="" avsAvsA} \
      ~{true="-N" false="" nN} \
      ~{true="-rdepth" false="" rRDepth} \
      ~{true="-cpu" false="" cpuCpu} \
      ~{true="-merge" false="" mergeMerge} \
      ~{true="-stat" false="" statStat} \
      ~{true="-pvalue" false="" pPValue} \
      ~{true="-minPeaks" false="" minMinPeaks} \
      ~{true="-res" false="" resRes} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(p2P2) then ("-p2 " +  '"' + p2P2 + '"') else ""} \
      ~{if defined(dDName) then ("-dname " +  '"' + dDName + '"') else ""} \
      ~{if defined(dname2Dname2) then ("-dname2 " +  '"' + dname2Dname2 + '"') else ""}
  >>>
}