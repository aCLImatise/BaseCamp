version 1.0

task SeuratFindMarkers.R {
  input {
    String inputInputObjectFile
    String genesGenesUse
    String inputInputFormat
    String logLogFcThreshold
    Int minMinPct
    Int minMinDiffPct
    String onlyOnlyPos
    String testTestUse
    Int maxMaxCellsPerIdent
    Int minMinCellsGene
    Int minMinCellsGroup
    String outputOutputTextFile
  }
  command <<<
    seurat-find-markers.R \
      ~{if defined(inputInputObjectFile) then ("--input-object-file " +  '"' + inputInputObjectFile + '"') else ""} \
      ~{if defined(genesGenesUse) then ("--genes-use " +  '"' + genesGenesUse + '"') else ""} \
      ~{if defined(inputInputFormat) then ("--input-format " +  '"' + inputInputFormat + '"') else ""} \
      ~{if defined(logLogFcThreshold) then ("--logfc-threshold " +  '"' + logLogFcThreshold + '"') else ""} \
      ~{if defined(minMinPct) then ("--min-pct " +  '"' + minMinPct + '"') else ""} \
      ~{if defined(minMinDiffPct) then ("--min-diff-pct " +  '"' + minMinDiffPct + '"') else ""} \
      ~{if defined(onlyOnlyPos) then ("--only-pos " +  '"' + onlyOnlyPos + '"') else ""} \
      ~{if defined(testTestUse) then ("--test-use " +  '"' + testTestUse + '"') else ""} \
      ~{if defined(maxMaxCellsPerIdent) then ("--max-cells-per-ident " +  '"' + maxMaxCellsPerIdent + '"') else ""} \
      ~{if defined(minMinCellsGene) then ("--min-cells-gene " +  '"' + minMinCellsGene + '"') else ""} \
      ~{if defined(minMinCellsGroup) then ("--min-cells-group " +  '"' + minMinCellsGroup + '"') else ""} \
      ~{if defined(outputOutputTextFile) then ("--output-text-file " +  '"' + outputOutputTextFile + '"') else ""}
  >>>
}