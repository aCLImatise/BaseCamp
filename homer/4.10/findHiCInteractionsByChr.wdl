version 1.0

task FindHiCInteractionsByChr.pl {
  input {
    Boolean resRes
    Boolean windowWindow
    Boolean mindMindIst
    Boolean maxMaxDist
    Boolean pPValue
    Boolean zscoreZscore
    Boolean cpuCpu
    String pedPed
    Boolean stdStd
    Boolean minMin
  }
  command <<<
    findHiCInteractionsByChr.pl \
      ~{true="-res" false="" resRes} \
      ~{true="-window" false="" windowWindow} \
      ~{true="-minDist" false="" mindMindIst} \
      ~{true="-maxDist" false="" maxMaxDist} \
      ~{true="-pvalue" false="" pPValue} \
      ~{true="-zscore" false="" zscoreZscore} \
      ~{true="-cpu" false="" cpuCpu} \
      ~{if defined(pedPed) then ("-ped " +  '"' + pedPed + '"') else ""} \
      ~{true="-std" false="" stdStd} \
      ~{true="-min" false="" minMin}
  >>>
}