version 1.0

task Tximport.R {
  input {
    File filesFiles
    String typeType
    String outputOutputCountsFile
    String outputOutputAbundancesFile
    String outputOutputStatsFile
    String outputOutputFormat
    String txTxIn
    String txTxOut
    String countsCountsFromAbundance
    String tx2geneTx2gene
    String varVarReduce
    String dropDropInfReps
    String ignoreIgnoreTxVersion
    String ignoreIgnoreAfterBar
    String geneidGeneidCol
    String txTxIdCol
    String abundanceAbundanceCol
    String countsCountsCol
    Int lengthLengthCol
    String importerImporter
    String existenceExistenceOptional
    String readReadLength
  }
  command <<<
    tximport.R \
      ~{if defined(filesFiles) then ("--files " +  '"' + filesFiles + '"') else ""} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{if defined(outputOutputCountsFile) then ("--outputCountsFile " +  '"' + outputOutputCountsFile + '"') else ""} \
      ~{if defined(outputOutputAbundancesFile) then ("--outputAbundancesFile " +  '"' + outputOutputAbundancesFile + '"') else ""} \
      ~{if defined(outputOutputStatsFile) then ("--outputStatsFile " +  '"' + outputOutputStatsFile + '"') else ""} \
      ~{if defined(outputOutputFormat) then ("--outputFormat " +  '"' + outputOutputFormat + '"') else ""} \
      ~{if defined(txTxIn) then ("--txIn " +  '"' + txTxIn + '"') else ""} \
      ~{if defined(txTxOut) then ("--txOut " +  '"' + txTxOut + '"') else ""} \
      ~{if defined(countsCountsFromAbundance) then ("--countsFromAbundance " +  '"' + countsCountsFromAbundance + '"') else ""} \
      ~{if defined(tx2geneTx2gene) then ("--tx2gene " +  '"' + tx2geneTx2gene + '"') else ""} \
      ~{if defined(varVarReduce) then ("--varReduce " +  '"' + varVarReduce + '"') else ""} \
      ~{if defined(dropDropInfReps) then ("--dropInfReps " +  '"' + dropDropInfReps + '"') else ""} \
      ~{if defined(ignoreIgnoreTxVersion) then ("--ignoreTxVersion " +  '"' + ignoreIgnoreTxVersion + '"') else ""} \
      ~{if defined(ignoreIgnoreAfterBar) then ("--ignoreAfterBar " +  '"' + ignoreIgnoreAfterBar + '"') else ""} \
      ~{if defined(geneidGeneidCol) then ("--geneIdCol " +  '"' + geneidGeneidCol + '"') else ""} \
      ~{if defined(txTxIdCol) then ("--txIdCol " +  '"' + txTxIdCol + '"') else ""} \
      ~{if defined(abundanceAbundanceCol) then ("--abundanceCol " +  '"' + abundanceAbundanceCol + '"') else ""} \
      ~{if defined(countsCountsCol) then ("--countsCol " +  '"' + countsCountsCol + '"') else ""} \
      ~{if defined(lengthLengthCol) then ("--lengthCol " +  '"' + lengthLengthCol + '"') else ""} \
      ~{if defined(importerImporter) then ("--importer " +  '"' + importerImporter + '"') else ""} \
      ~{if defined(existenceExistenceOptional) then ("--existenceOptional " +  '"' + existenceExistenceOptional + '"') else ""} \
      ~{if defined(readReadLength) then ("--readLength " +  '"' + readReadLength + '"') else ""}
  >>>
}