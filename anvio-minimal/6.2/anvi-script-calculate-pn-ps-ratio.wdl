version 1.0

task AnviScriptCalculatePnPsRatio {
  input {
    String engineEngine
    String saSaAvTable
    String scvScvTable
    String contigsContigsDb
    Float minMinDepartureFromConsensus
    Int minimumMinimumNumVariants
    Int minMinCoverage
    String outputOutputDir
  }
  command <<<
    anvi-script-calculate-pn-ps-ratio \
      ~{if defined(engineEngine) then ("--engine " +  '"' + engineEngine + '"') else ""} \
      ~{if defined(saSaAvTable) then ("--saav-table " +  '"' + saSaAvTable + '"') else ""} \
      ~{if defined(scvScvTable) then ("--scv-table " +  '"' + scvScvTable + '"') else ""} \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(minMinDepartureFromConsensus) then ("--min-departure-from-consensus " +  '"' + minMinDepartureFromConsensus + '"') else ""} \
      ~{if defined(minimumMinimumNumVariants) then ("--minimum-num-variants " +  '"' + minimumMinimumNumVariants + '"') else ""} \
      ~{if defined(minMinCoverage) then ("--min-coverage " +  '"' + minMinCoverage + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}