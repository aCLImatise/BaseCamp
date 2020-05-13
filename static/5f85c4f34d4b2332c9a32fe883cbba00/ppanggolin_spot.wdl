version 1.0

task PpanggolinSpot {
  input {
    String outputOutput
    Boolean spotSpotGraph
    Boolean drawDrawHotspots
    String overlappingOverlappingMatch
    String setSetSize
    String exactExactMatchSize
    Int interestInterest
    String panPanGenome
    String tmpdirTmpdir
    Boolean verboseVerbose
    String logLog
    String cpuCpu
    Boolean forceForce
  }
  command <<<
    ppanggolin spot \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--spot_graph" false="" spotSpotGraph} \
      ~{true="--draw_hotspots" false="" drawDrawHotspots} \
      ~{if defined(overlappingOverlappingMatch) then ("--overlapping_match " +  '"' + overlappingOverlappingMatch + '"') else ""} \
      ~{if defined(setSetSize) then ("--set_size " +  '"' + setSetSize + '"') else ""} \
      ~{if defined(exactExactMatchSize) then ("--exact_match_size " +  '"' + exactExactMatchSize + '"') else ""} \
      ~{if defined(interestInterest) then ("--interest " +  '"' + interestInterest + '"') else ""} \
      ~{if defined(panPanGenome) then ("--pangenome " +  '"' + panPanGenome + '"') else ""} \
      ~{if defined(tmpdirTmpdir) then ("--tmpdir " +  '"' + tmpdirTmpdir + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(cpuCpu) then ("--cpu " +  '"' + cpuCpu + '"') else ""} \
      ~{true="--force" false="" forceForce}
  >>>
}