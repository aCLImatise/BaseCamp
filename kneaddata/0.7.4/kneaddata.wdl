version 1.0

task Kneaddata {
  input {
    Boolean verboseVerbose
    String inputInput
    String outputOutput
    String referenceReferenceDb
    Boolean bypassBypassTrim
    String outputOutputPrefix
    Boolean tT
    Boolean pP
    String qualityQualityScores
    Boolean runRunBmTagger
    Boolean runRunTrf
    Boolean runRunFastQcStart
    Boolean runRunFastQcEnd
    Boolean storeStoreTempOutput
    Boolean removeRemoveIntermediateOutput
    Boolean catCatFinalOutput
    String logLogLevel
    String logLog
    String trimTrimMoMatic
    Int maxMaxMemory
    String trimTrimMoMaticOptions
    String bowtie2Bowtie2
    String bowtie2Bowtie2Options
    Boolean noNoDiscordant
    Boolean reorderReorder
    Boolean serialSerial
    String bmBmTagger
    String trfTrf
    String matchMatch
    String mismatchMismatch
    String deltaDelta
    String pmPm
    String piPi
    Int minMinScore
    Int maxMaxPeriod
    String fastFastQc
  }
  command <<<
    kneaddata \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(referenceReferenceDb) then ("--reference-db " +  '"' + referenceReferenceDb + '"') else ""} \
      ~{true="--bypass-trim" false="" bypassBypassTrim} \
      ~{if defined(outputOutputPrefix) then ("--output-prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{true="-t" false="" tT} \
      ~{true="-p" false="" pP} \
      ~{if defined(qualityQualityScores) then ("--quality-scores " +  '"' + qualityQualityScores + '"') else ""} \
      ~{true="--run-bmtagger" false="" runRunBmTagger} \
      ~{true="--run-trf" false="" runRunTrf} \
      ~{true="--run-fastqc-start" false="" runRunFastQcStart} \
      ~{true="--run-fastqc-end" false="" runRunFastQcEnd} \
      ~{true="--store-temp-output" false="" storeStoreTempOutput} \
      ~{true="--remove-intermediate-output" false="" removeRemoveIntermediateOutput} \
      ~{true="--cat-final-output" false="" catCatFinalOutput} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(trimTrimMoMatic) then ("--trimmomatic " +  '"' + trimTrimMoMatic + '"') else ""} \
      ~{if defined(maxMaxMemory) then ("--max-memory " +  '"' + maxMaxMemory + '"') else ""} \
      ~{if defined(trimTrimMoMaticOptions) then ("--trimmomatic-options " +  '"' + trimTrimMoMaticOptions + '"') else ""} \
      ~{if defined(bowtie2Bowtie2) then ("--bowtie2 " +  '"' + bowtie2Bowtie2 + '"') else ""} \
      ~{if defined(bowtie2Bowtie2Options) then ("--bowtie2-options " +  '"' + bowtie2Bowtie2Options + '"') else ""} \
      ~{true="--no-discordant" false="" noNoDiscordant} \
      ~{true="--reorder" false="" reorderReorder} \
      ~{true="--serial" false="" serialSerial} \
      ~{if defined(bmBmTagger) then ("--bmtagger " +  '"' + bmBmTagger + '"') else ""} \
      ~{if defined(trfTrf) then ("--trf " +  '"' + trfTrf + '"') else ""} \
      ~{if defined(matchMatch) then ("--match " +  '"' + matchMatch + '"') else ""} \
      ~{if defined(mismatchMismatch) then ("--mismatch " +  '"' + mismatchMismatch + '"') else ""} \
      ~{if defined(deltaDelta) then ("--delta " +  '"' + deltaDelta + '"') else ""} \
      ~{if defined(pmPm) then ("--pm " +  '"' + pmPm + '"') else ""} \
      ~{if defined(piPi) then ("--pi " +  '"' + piPi + '"') else ""} \
      ~{if defined(minMinScore) then ("--minscore " +  '"' + minMinScore + '"') else ""} \
      ~{if defined(maxMaxPeriod) then ("--maxperiod " +  '"' + maxMaxPeriod + '"') else ""} \
      ~{if defined(fastFastQc) then ("--fastqc " +  '"' + fastFastQc + '"') else ""}
  >>>
}