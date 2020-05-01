version 1.0

task RnaclustAlignRange.pl {
  input {
    Boolean rangeRange
    Boolean tgtTgtDir
    Boolean dpDpDir
    Boolean cpuCpu
    Boolean locaLocaRnaOpts
    File locaLocaRnaPath
    Boolean manMan
  }
  command <<<
    rnaclustAlignRange.pl \
      ~{true="--range" false="" rangeRange} \
      ~{true="--tgtdir" false="" tgtTgtDir} \
      ~{true="--dpdir" false="" dpDpDir} \
      ~{true="--cpu" false="" cpuCpu} \
      ~{true="--locarna-opts" false="" locaLocaRnaOpts} \
      ~{if defined(locaLocaRnaPath) then ("--locarna-path " +  '"' + locaLocaRnaPath + '"') else ""} \
      ~{true="--man" false="" manMan}
  >>>
}