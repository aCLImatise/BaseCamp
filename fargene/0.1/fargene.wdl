version 1.0

task Fargene {
  input {
    Array[String]+ inInFiles
    String hmmHmmModel
    String scoreScore
    Boolean metaMeta
    String metaMetaScore
    String outputOutput
    Boolean forceForce
    String tmpTmpDir
    Boolean proteinProtein
    String processesProcesses
    Int minMinOrfLength
    Boolean retrieveRetrieveWhole
    Boolean noNoOrfPredict
    Boolean noNoQualityFiltering
    Boolean noNoAssembly
    Boolean orfOrfFinder
    Boolean storeStorePeptides
    Boolean rerunRerun
    String aminoAminoDir
    String fastFastADir
    String translationTranslationFormat
    String loglevelLoglevel
    String logLogFile
  }
  command <<<
    fargene \
      ~{if defined(inInFiles) then ("--infiles " +  '"' + inInFiles + '"') else ""} \
      ~{if defined(hmmHmmModel) then ("--hmm-model " +  '"' + hmmHmmModel + '"') else ""} \
      ~{if defined(scoreScore) then ("--score " +  '"' + scoreScore + '"') else ""} \
      ~{true="--meta" false="" metaMeta} \
      ~{if defined(metaMetaScore) then ("--meta-score " +  '"' + metaMetaScore + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(tmpTmpDir) then ("--tmp-dir " +  '"' + tmpTmpDir + '"') else ""} \
      ~{true="--protein" false="" proteinProtein} \
      ~{if defined(processesProcesses) then ("--processes " +  '"' + processesProcesses + '"') else ""} \
      ~{if defined(minMinOrfLength) then ("--min-orf-length " +  '"' + minMinOrfLength + '"') else ""} \
      ~{true="--retrieve-whole" false="" retrieveRetrieveWhole} \
      ~{true="--no-orf-predict" false="" noNoOrfPredict} \
      ~{true="--no-quality-filtering" false="" noNoQualityFiltering} \
      ~{true="--no-assembly" false="" noNoAssembly} \
      ~{true="--orf-finder" false="" orfOrfFinder} \
      ~{true="--store-peptides" false="" storeStorePeptides} \
      ~{true="--rerun" false="" rerunRerun} \
      ~{if defined(aminoAminoDir) then ("--amino-dir " +  '"' + aminoAminoDir + '"') else ""} \
      ~{if defined(fastFastADir) then ("--fasta-dir " +  '"' + fastFastADir + '"') else ""} \
      ~{if defined(translationTranslationFormat) then ("--translation-format " +  '"' + translationTranslationFormat + '"') else ""} \
      ~{if defined(loglevelLoglevel) then ("--loglevel " +  '"' + loglevelLoglevel + '"') else ""} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""}
  >>>
}