version 1.0

task SonicparanoidExtract {
  input {
    String inputInputTable
    String outputOutputDirectory
    String fastFastADirectory
    Int minMinSp
    Int maxMaxSp
    String idsIdsList
    Int minMinConf
    Boolean fastFastA
    Boolean multipleMultipleFastA
    String anAnNotCols
    String anAnNotFile
    String geneGeneColId
    Boolean debugDebug
  }
  command <<<
    sonicparanoid-extract \
      ~{if defined(inputInputTable) then ("--input-table " +  '"' + inputInputTable + '"') else ""} \
      ~{if defined(outputOutputDirectory) then ("--output-directory " +  '"' + outputOutputDirectory + '"') else ""} \
      ~{if defined(fastFastADirectory) then ("--fasta-directory " +  '"' + fastFastADirectory + '"') else ""} \
      ~{if defined(minMinSp) then ("--min-sp " +  '"' + minMinSp + '"') else ""} \
      ~{if defined(maxMaxSp) then ("--max-sp " +  '"' + maxMaxSp + '"') else ""} \
      ~{if defined(idsIdsList) then ("--ids-list " +  '"' + idsIdsList + '"') else ""} \
      ~{if defined(minMinConf) then ("--min-conf " +  '"' + minMinConf + '"') else ""} \
      ~{true="--fasta" false="" fastFastA} \
      ~{true="--multiple-fasta" false="" multipleMultipleFastA} \
      ~{if defined(anAnNotCols) then ("--annot-cols " +  '"' + anAnNotCols + '"') else ""} \
      ~{if defined(anAnNotFile) then ("--annot-file " +  '"' + anAnNotFile + '"') else ""} \
      ~{if defined(geneGeneColId) then ("--gene-col-id " +  '"' + geneGeneColId + '"') else ""} \
      ~{true="--debug" false="" debugDebug}
  >>>
}