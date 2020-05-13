version 1.0

task Fusioncatcher.py {
  input {
    String inputInput
    Boolean batchBatch
    Boolean singleSingleEnd
    String normalNormal
    String outputOutput
    String dataData
    String tmpTmp
    String threadsThreads
    String configConfig
    Boolean forceForcePaths
    Boolean noNoUpdateCheck
    Boolean keepKeepVirusesAlignments
    Boolean keepKeepUnmappedReads
    String alignersAligners
    Boolean skipSkipBlat
    Boolean skipSkipStar
    Boolean skipSkipConversionGrch37
    String limitsLimitsJdbInsertNsJ
    String limitLimitOutSjCollapsed
    String sortSortBufferSize
    String startStart
    String xXMx
  }
  command <<<
    fusioncatcher.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{true="--batch" false="" batchBatch} \
      ~{true="--single-end" false="" singleSingleEnd} \
      ~{if defined(normalNormal) then ("--normal " +  '"' + normalNormal + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(dataData) then ("--data " +  '"' + dataData + '"') else ""} \
      ~{if defined(tmpTmp) then ("--tmp " +  '"' + tmpTmp + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{true="--force-paths" false="" forceForcePaths} \
      ~{true="--no-update-check" false="" noNoUpdateCheck} \
      ~{true="--keep-viruses-alignments" false="" keepKeepVirusesAlignments} \
      ~{true="--keep-unmapped-reads" false="" keepKeepUnmappedReads} \
      ~{if defined(alignersAligners) then ("--aligners " +  '"' + alignersAligners + '"') else ""} \
      ~{true="--skip-blat" false="" skipSkipBlat} \
      ~{true="--skip-star" false="" skipSkipStar} \
      ~{true="--skip-conversion-grch37" false="" skipSkipConversionGrch37} \
      ~{if defined(limitsLimitsJdbInsertNsJ) then ("--limitSjdbInsertNsj " +  '"' + limitsLimitsJdbInsertNsJ + '"') else ""} \
      ~{if defined(limitLimitOutSjCollapsed) then ("--limitOutSJcollapsed " +  '"' + limitLimitOutSjCollapsed + '"') else ""} \
      ~{if defined(sortSortBufferSize) then ("--sort-buffer-size " +  '"' + sortSortBufferSize + '"') else ""} \
      ~{if defined(startStart) then ("--start " +  '"' + startStart + '"') else ""} \
      ~{if defined(xXMx) then ("--Xmx " +  '"' + xXMx + '"') else ""}
  >>>
}