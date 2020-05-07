version 1.0

task BatchFindMotifsGenome.pl {
  input {
    Boolean distDist
    Boolean cpuCpu
  }
  command <<<
    batchFindMotifsGenome.pl \
      ~{true="-dist" false="" distDist} \
      ~{true="-cpu" false="" cpuCpu}
  >>>
}