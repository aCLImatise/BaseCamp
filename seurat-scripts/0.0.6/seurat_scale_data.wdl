version 1.0

task SeuratScaleData.R {
  input {
    String inputInputObjectFile
    String inputInputFormat
    String outputOutputFormat
    String genesGenesUse
    String varsVarsToRegress
    String modelModelUse
    String useUseUmi
    Boolean doDoNotScale
    Boolean doDoNotCenter
    String scaleScaleMax
    String blockBlockSize
    Int minMinCellsToBlock
    String checkCheckForNorm
    String outputOutputObjectFile
  }
  command <<<
    seurat-scale-data.R \
      ~{if defined(inputInputObjectFile) then ("--input-object-file " +  '"' + inputInputObjectFile + '"') else ""} \
      ~{if defined(inputInputFormat) then ("--input-format " +  '"' + inputInputFormat + '"') else ""} \
      ~{if defined(outputOutputFormat) then ("--output-format " +  '"' + outputOutputFormat + '"') else ""} \
      ~{if defined(genesGenesUse) then ("--genes-use " +  '"' + genesGenesUse + '"') else ""} \
      ~{if defined(varsVarsToRegress) then ("--vars-to-regress " +  '"' + varsVarsToRegress + '"') else ""} \
      ~{if defined(modelModelUse) then ("--model-use " +  '"' + modelModelUse + '"') else ""} \
      ~{if defined(useUseUmi) then ("--use-umi " +  '"' + useUseUmi + '"') else ""} \
      ~{true="--do-not-scale" false="" doDoNotScale} \
      ~{true="--do-not-center" false="" doDoNotCenter} \
      ~{if defined(scaleScaleMax) then ("--scale-max " +  '"' + scaleScaleMax + '"') else ""} \
      ~{if defined(blockBlockSize) then ("--block-size " +  '"' + blockBlockSize + '"') else ""} \
      ~{if defined(minMinCellsToBlock) then ("--min-cells-to-block " +  '"' + minMinCellsToBlock + '"') else ""} \
      ~{if defined(checkCheckForNorm) then ("--check-for-norm " +  '"' + checkCheckForNorm + '"') else ""} \
      ~{if defined(outputOutputObjectFile) then ("--output-object-file " +  '"' + outputOutputObjectFile + '"') else ""}
  >>>
}