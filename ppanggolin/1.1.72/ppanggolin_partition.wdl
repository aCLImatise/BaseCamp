version 1.0

task PpanggolinPartition {
  input {
    String panPanGenome
    String betaBeta
    Int maxMaxDegreeSmoothing
    String outputOutput
    Boolean freeFreeDispersion
    String chunkChunkSize
    String nbNbOfPartitions
    String kmmKmm
    String iclIclMargin
    Boolean drawDrawIcl
    Boolean keepKeepTmpFiles
    String seedSeed
    String tmpdirTmpdir
    Boolean verboseVerbose
    String logLog
    String cpuCpu
    Boolean forceForce
  }
  command <<<
    ppanggolin partition \
      ~{if defined(panPanGenome) then ("--pangenome " +  '"' + panPanGenome + '"') else ""} \
      ~{if defined(betaBeta) then ("--beta " +  '"' + betaBeta + '"') else ""} \
      ~{if defined(maxMaxDegreeSmoothing) then ("--max_degree_smoothing " +  '"' + maxMaxDegreeSmoothing + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--free_dispersion" false="" freeFreeDispersion} \
      ~{if defined(chunkChunkSize) then ("--chunk_size " +  '"' + chunkChunkSize + '"') else ""} \
      ~{if defined(nbNbOfPartitions) then ("--nb_of_partitions " +  '"' + nbNbOfPartitions + '"') else ""} \
      ~{if defined(kmmKmm) then ("-Kmm " +  '"' + kmmKmm + '"') else ""} \
      ~{if defined(iclIclMargin) then ("--ICL_margin " +  '"' + iclIclMargin + '"') else ""} \
      ~{true="--draw_ICL" false="" drawDrawIcl} \
      ~{true="--keep_tmp_files" false="" keepKeepTmpFiles} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(tmpdirTmpdir) then ("--tmpdir " +  '"' + tmpdirTmpdir + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(cpuCpu) then ("--cpu " +  '"' + cpuCpu + '"') else ""} \
      ~{true="--force" false="" forceForce}
  >>>
}