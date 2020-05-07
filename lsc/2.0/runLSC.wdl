version 1.0

task RunLSC.py {
  input {
    String longLongReads
    Boolean shortShortReads
    String shortShortReadFileType
    String threadsThreads
    String tempdirTempdir
    String specificSpecificTempdir
    String outputOutput
    Boolean modeMode
    String parallelizedParallelizedMode2
    String alignerAligner
    String sortSortMemMax
    Int minMinNumberOfNonN
    Int maxMaxN
    String errorErrorRateThreshold
    String shortShortReadCoverageThreshold
    String longLongReadBatchSize
    String samSamToolsPath
  }
  command <<<
    runLSC.py \
      ~{if defined(longLongReads) then ("--long_reads " +  '"' + longLongReads + '"') else ""} \
      ~{true="--short_reads" false="" shortShortReads} \
      ~{if defined(shortShortReadFileType) then ("--short_read_file_type " +  '"' + shortShortReadFileType + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(tempdirTempdir) then ("--tempdir " +  '"' + tempdirTempdir + '"') else ""} \
      ~{if defined(specificSpecificTempdir) then ("--specific_tempdir " +  '"' + specificSpecificTempdir + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--mode" false="" modeMode} \
      ~{if defined(parallelizedParallelizedMode2) then ("--parallelized_mode_2 " +  '"' + parallelizedParallelizedMode2 + '"') else ""} \
      ~{if defined(alignerAligner) then ("--aligner " +  '"' + alignerAligner + '"') else ""} \
      ~{if defined(sortSortMemMax) then ("--sort_mem_max " +  '"' + sortSortMemMax + '"') else ""} \
      ~{if defined(minMinNumberOfNonN) then ("--minNumberofNonN " +  '"' + minMinNumberOfNonN + '"') else ""} \
      ~{if defined(maxMaxN) then ("--maxN " +  '"' + maxMaxN + '"') else ""} \
      ~{if defined(errorErrorRateThreshold) then ("--error_rate_threshold " +  '"' + errorErrorRateThreshold + '"') else ""} \
      ~{if defined(shortShortReadCoverageThreshold) then ("--short_read_coverage_threshold " +  '"' + shortShortReadCoverageThreshold + '"') else ""} \
      ~{if defined(longLongReadBatchSize) then ("--long_read_batch_size " +  '"' + longLongReadBatchSize + '"') else ""} \
      ~{if defined(samSamToolsPath) then ("--samtools_path " +  '"' + samSamToolsPath + '"') else ""}
  >>>
}