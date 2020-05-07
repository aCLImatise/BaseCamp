version 1.0

task SubtractBedGraphs.pl {
  input {
    String covCov
    Boolean covCovThresh
    String nameName
    Boolean centerCenter
  }
  command <<<
    subtractBedGraphs.pl \
      ~{if defined(covCov) then ("-cov " +  '"' + covCov + '"') else ""} \
      ~{true="-covThresh" false="" covCovThresh} \
      ~{if defined(nameName) then ("-name " +  '"' + nameName + '"') else ""} \
      ~{true="-center" false="" centerCenter}
  >>>
}