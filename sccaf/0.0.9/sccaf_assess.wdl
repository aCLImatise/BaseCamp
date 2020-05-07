version 1.0

task SccafAssess {
  input {
    String inputInputFile
    String outputOutputTable
    String externalExternalClusteringTsv
    String slotSlotForExistingClustering
    String iterationsIterations
    String coresCores
    Boolean useUsePcA
  }
  command <<<
    sccaf-assess \
      ~{if defined(inputInputFile) then ("--input-file " +  '"' + inputInputFile + '"') else ""} \
      ~{if defined(outputOutputTable) then ("--output-table " +  '"' + outputOutputTable + '"') else ""} \
      ~{if defined(externalExternalClusteringTsv) then ("--external-clustering-tsv " +  '"' + externalExternalClusteringTsv + '"') else ""} \
      ~{if defined(slotSlotForExistingClustering) then ("--slot-for-existing-clustering " +  '"' + slotSlotForExistingClustering + '"') else ""} \
      ~{if defined(iterationsIterations) then ("--iterations " +  '"' + iterationsIterations + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{true="--use-pca" false="" useUsePcA}
  >>>
}