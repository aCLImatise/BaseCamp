version 1.0

task RefinemGenomeStats {
  input {
    String cpusCpus
    Boolean silentSilent
    String? scaffoldScaffoldStatsFile
    String? outputOutputFile
  }
  command <<<
    refinem genome_stats \
      ~{scaffoldScaffoldStatsFile} \
      ~{if defined(cpusCpus) then ("--cpus " +  '"' + cpusCpus + '"') else ""} \
      ~{true="--silent" false="" silentSilent} \
      ~{outputOutputFile}
  >>>
}