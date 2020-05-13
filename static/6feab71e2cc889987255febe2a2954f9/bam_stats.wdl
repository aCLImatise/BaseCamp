version 1.0

task BamStats.pl {
  input {
    Boolean inputInput
    Boolean outputOutput
    Boolean plotsPlots
    Boolean threadsThreads
    Boolean plotsPlots
    Boolean manMan
    Boolean versionVersion
  }
  command <<<
    bam_stats.pl \
      ~{true="-input" false="" inputInput} \
      ~{true="-output" false="" outputOutput} \
      ~{true="-plots" false="" plotsPlots} \
      ~{true="-threads" false="" threadsThreads} \
      ~{true="-plots" false="" plotsPlots} \
      ~{true="-man" false="" manMan} \
      ~{true="-version" false="" versionVersion}
  >>>
}