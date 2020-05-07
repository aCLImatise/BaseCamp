version 1.0

task PpanggolinRarefaction {
  input {
    String panPanGenome
    String betaBeta
    String depthDepth
    Int minMin
    Int maxMax
    Int maxMaxDegreeSmoothing
    String outputOutput
    Boolean freeFreeDispersion
    String chunkChunkSize
    String nbNbOfPartitions
    Boolean reReEstimateK
    String kmmKmm
    String softSoftCore
    String seedSeed
    String tmpdirTmpdir
    Boolean verboseVerbose
    String logLog
    String cpuCpu
    Boolean forceForce
  }
  command <<<
    ppanggolin rarefaction \
      ~{if defined(panPanGenome) then ("--pangenome " +  '"' + panPanGenome + '"') else ""} \
      ~{if defined(betaBeta) then ("--beta " +  '"' + betaBeta + '"') else ""} \
      ~{if defined(depthDepth) then ("--depth " +  '"' + depthDepth + '"') else ""} \
      ~{if defined(minMin) then ("--min " +  '"' + minMin + '"') else ""} \
      ~{if defined(maxMax) then ("--max " +  '"' + maxMax + '"') else ""} \
      ~{if defined(maxMaxDegreeSmoothing) then ("--max_degree_smoothing " +  '"' + maxMaxDegreeSmoothing + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--free_dispersion" false="" freeFreeDispersion} \
      ~{if defined(chunkChunkSize) then ("--chunk_size " +  '"' + chunkChunkSize + '"') else ""} \
      ~{if defined(nbNbOfPartitions) then ("--nb_of_partitions " +  '"' + nbNbOfPartitions + '"') else ""} \
      ~{true="--reestimate_K" false="" reReEstimateK} \
      ~{if defined(kmmKmm) then ("-Kmm " +  '"' + kmmKmm + '"') else ""} \
      ~{if defined(softSoftCore) then ("--soft_core " +  '"' + softSoftCore + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(tmpdirTmpdir) then ("--tmpdir " +  '"' + tmpdirTmpdir + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(cpuCpu) then ("--cpu " +  '"' + cpuCpu + '"') else ""} \
      ~{true="--force" false="" forceForce}
  >>>
}