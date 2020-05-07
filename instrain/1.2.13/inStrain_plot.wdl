version 1.0

task InStrainPlot {
  input {
    String isIs
    Boolean plPl
    Int minimumMinimumBreadth
    Boolean gG
    String processesProcesses
    Boolean debugDebug
  }
  command <<<
    inStrain plot \
      ~{if defined(isIs) then ("--IS " +  '"' + isIs + '"') else ""} \
      ~{true="-pl" false="" plPl} \
      ~{if defined(minimumMinimumBreadth) then ("--minimum_breadth " +  '"' + minimumMinimumBreadth + '"') else ""} \
      ~{true="-g" false="" gG} \
      ~{if defined(processesProcesses) then ("--processes " +  '"' + processesProcesses + '"') else ""} \
      ~{true="--debug" false="" debugDebug}
  >>>
}