version 1.0

task GetHiCcorrDiff.pl {
  input {
    Boolean resRes
    Boolean windowWindow
    Boolean corrCorrDepth
    Boolean stdStd
    Boolean minMin
    Boolean maxMaxDist
    Boolean cpuCpu
  }
  command <<<
    getHiCcorrDiff.pl \
      ~{true="-res" false="" resRes} \
      ~{true="-window" false="" windowWindow} \
      ~{true="-corrDepth" false="" corrCorrDepth} \
      ~{true="-std" false="" stdStd} \
      ~{true="-min" false="" minMin} \
      ~{true="-maxDist" false="" maxMaxDist} \
      ~{true="-cpu" false="" cpuCpu}
  >>>
}