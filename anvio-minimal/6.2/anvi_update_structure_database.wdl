version 1.0

task AnviUpdateStructureDatabase {
  input {
    String contigsContigsDb
    String structureStructureDb
    File genesGenesOfInterest
    String geneGeneCallerIds
    String dumpDumpDir
    Boolean listListModellerParams
    Boolean rerunRerunGenes
    String modellerModellerExecutable
    String numNumThreads
    Int writeWriteBufferSizePerThread
  }
  command <<<
    anvi-update-structure-database \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(structureStructureDb) then ("--structure-db " +  '"' + structureStructureDb + '"') else ""} \
      ~{if defined(genesGenesOfInterest) then ("--genes-of-interest " +  '"' + genesGenesOfInterest + '"') else ""} \
      ~{if defined(geneGeneCallerIds) then ("--gene-caller-ids " +  '"' + geneGeneCallerIds + '"') else ""} \
      ~{if defined(dumpDumpDir) then ("--dump-dir " +  '"' + dumpDumpDir + '"') else ""} \
      ~{true="--list-modeller-params" false="" listListModellerParams} \
      ~{true="--rerun-genes" false="" rerunRerunGenes} \
      ~{if defined(modellerModellerExecutable) then ("--modeller-executable " +  '"' + modellerModellerExecutable + '"') else ""} \
      ~{if defined(numNumThreads) then ("--num-threads " +  '"' + numNumThreads + '"') else ""} \
      ~{if defined(writeWriteBufferSizePerThread) then ("--write-buffer-size-per-thread " +  '"' + writeWriteBufferSizePerThread + '"') else ""}
  >>>
}