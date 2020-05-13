version 1.0

task Ssu {
  input {
    Boolean iI
    Boolean tT
    Boolean mM
    Boolean oO
    Boolean nN
    Boolean aA
    Boolean fF
    Boolean vawVaw
    Boolean modeMode
    Boolean startStart
    Boolean stopStop
    Boolean partialPartialPattern
    Boolean nNPartials
    Boolean reportReportBare
  }
  command <<<
    ssu \
      ~{true="-i" false="" iI} \
      ~{true="-t" false="" tT} \
      ~{true="-m" false="" mM} \
      ~{true="-o" false="" oO} \
      ~{true="-n" false="" nN} \
      ~{true="-a" false="" aA} \
      ~{true="-f" false="" fF} \
      ~{true="--vaw" false="" vawVaw} \
      ~{true="--mode" false="" modeMode} \
      ~{true="--start" false="" startStart} \
      ~{true="--stop" false="" stopStop} \
      ~{true="--partial-pattern" false="" partialPartialPattern} \
      ~{true="--n-partials" false="" nNPartials} \
      ~{true="--report-bare" false="" reportReportBare}
  >>>
}