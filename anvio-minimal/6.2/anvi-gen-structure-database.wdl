version 1.0

task AnviGenStructureDatabase {
  input {
    String contigsContigsDb
    String pdbPdbDb
    File genesGenesOfInterest
    String geneGeneCallerIds
    String outputOutputDbPath
    String dumpDumpDir
    String numNumModels
    String deviationDeviation
    String modellerModellerDatabase
    String scoringScoringMethod
    Boolean veryVeryFast
    String percentPercentIdenticalCutOff
    Int maxMaxNumberTemplates
    Boolean skipSkipDssp
    String modellerModellerExecutable
    Boolean offlineOfflineMode
    String numNumThreads
    Int writeWriteBufferSizePerThread
  }
  command <<<
    anvi-gen-structure-database \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(pdbPdbDb) then ("--pdb-db " +  '"' + pdbPdbDb + '"') else ""} \
      ~{if defined(genesGenesOfInterest) then ("--genes-of-interest " +  '"' + genesGenesOfInterest + '"') else ""} \
      ~{if defined(geneGeneCallerIds) then ("--gene-caller-ids " +  '"' + geneGeneCallerIds + '"') else ""} \
      ~{if defined(outputOutputDbPath) then ("--output-db-path " +  '"' + outputOutputDbPath + '"') else ""} \
      ~{if defined(dumpDumpDir) then ("--dump-dir " +  '"' + dumpDumpDir + '"') else ""} \
      ~{if defined(numNumModels) then ("--num-models " +  '"' + numNumModels + '"') else ""} \
      ~{if defined(deviationDeviation) then ("--deviation " +  '"' + deviationDeviation + '"') else ""} \
      ~{if defined(modellerModellerDatabase) then ("--modeller-database " +  '"' + modellerModellerDatabase + '"') else ""} \
      ~{if defined(scoringScoringMethod) then ("--scoring-method " +  '"' + scoringScoringMethod + '"') else ""} \
      ~{true="--very-fast" false="" veryVeryFast} \
      ~{if defined(percentPercentIdenticalCutOff) then ("--percent-identical-cutoff " +  '"' + percentPercentIdenticalCutOff + '"') else ""} \
      ~{if defined(maxMaxNumberTemplates) then ("--max-number-templates " +  '"' + maxMaxNumberTemplates + '"') else ""} \
      ~{true="--skip-DSSP" false="" skipSkipDssp} \
      ~{if defined(modellerModellerExecutable) then ("--modeller-executable " +  '"' + modellerModellerExecutable + '"') else ""} \
      ~{true="--offline-mode" false="" offlineOfflineMode} \
      ~{if defined(numNumThreads) then ("--num-threads " +  '"' + numNumThreads + '"') else ""} \
      ~{if defined(writeWriteBufferSizePerThread) then ("--write-buffer-size-per-thread " +  '"' + writeWriteBufferSizePerThread + '"') else ""}
  >>>
}