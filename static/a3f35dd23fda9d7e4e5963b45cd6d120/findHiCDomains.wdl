version 1.0

task FindHiCDomains.pl {
  input {
    Boolean resRes
    Boolean windowWindow
    Boolean maxMaxDist
    Boolean mindMindIst
    Boolean logLog
    Boolean stdStd
    Boolean minMin
    Boolean cpuCpu
    Boolean windowWindow
    Boolean minMinIndex
    Boolean mineMineXpIndex
    Boolean minMinDelta
    Boolean minlengthMinlength
    Boolean maxMaxError
  }
  command <<<
    findHiCDomains.pl \
      ~{true="-res" false="" resRes} \
      ~{true="-window" false="" windowWindow} \
      ~{true="-maxDist" false="" maxMaxDist} \
      ~{true="-minDist" false="" mindMindIst} \
      ~{true="-log" false="" logLog} \
      ~{true="-std" false="" stdStd} \
      ~{true="-min" false="" minMin} \
      ~{true="-cpu" false="" cpuCpu} \
      ~{true="-window" false="" windowWindow} \
      ~{true="-minIndex" false="" minMinIndex} \
      ~{true="-minExpIndex" false="" mineMineXpIndex} \
      ~{true="-minDelta" false="" minMinDelta} \
      ~{true="-minLength" false="" minlengthMinlength} \
      ~{true="-maxError" false="" maxMaxError}
  >>>
}