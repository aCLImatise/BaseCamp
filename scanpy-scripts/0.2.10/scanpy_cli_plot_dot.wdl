version 1.0

task ScanpyCliPlotDot {
  input {
    Boolean inputInputFormat
    Int figFigSize
    Int figFigDpi
    Int figFigFontSize
    Boolean useUseRaw
    String varVarNames
    String groupsGroups
    Int nNGenes
    Boolean rggRgg
    String groupGroupBy
    Boolean logLog
    Int numNumCategories
    Boolean dendrogramDendrogram
    String layerLayer
    Boolean standardStandardScale
    String geneGeneSymbols
    Float expressionExpressionCutOff
    Boolean meanMeanOnlyExpressed
    String colorColorMap
    Float dotDotMax
    Float dotDotMin
    Float smallestSmallestDot
  }
  command <<<
    scanpy-cli plot dot \
      ~{true="--input-format" false="" inputInputFormat} \
      ~{if defined(figFigSize) then ("--fig-size " +  '"' + figFigSize + '"') else ""} \
      ~{if defined(figFigDpi) then ("--fig-dpi " +  '"' + figFigDpi + '"') else ""} \
      ~{if defined(figFigFontSize) then ("--fig-fontsize " +  '"' + figFigFontSize + '"') else ""} \
      ~{true="--use-raw" false="" useUseRaw} \
      ~{if defined(varVarNames) then ("--var-names " +  '"' + varVarNames + '"') else ""} \
      ~{if defined(groupsGroups) then ("--groups " +  '"' + groupsGroups + '"') else ""} \
      ~{if defined(nNGenes) then ("--n-genes " +  '"' + nNGenes + '"') else ""} \
      ~{true="--rgg" false="" rggRgg} \
      ~{if defined(groupGroupBy) then ("--groupby " +  '"' + groupGroupBy + '"') else ""} \
      ~{true="--log" false="" logLog} \
      ~{if defined(numNumCategories) then ("--num-categories " +  '"' + numNumCategories + '"') else ""} \
      ~{true="--dendrogram" false="" dendrogramDendrogram} \
      ~{if defined(layerLayer) then ("--layer " +  '"' + layerLayer + '"') else ""} \
      ~{true="--standard-scale" false="" standardStandardScale} \
      ~{if defined(geneGeneSymbols) then ("--gene-symbols " +  '"' + geneGeneSymbols + '"') else ""} \
      ~{if defined(expressionExpressionCutOff) then ("--expression-cutoff " +  '"' + expressionExpressionCutOff + '"') else ""} \
      ~{true="--mean-only-expressed" false="" meanMeanOnlyExpressed} \
      ~{if defined(colorColorMap) then ("--color-map " +  '"' + colorColorMap + '"') else ""} \
      ~{if defined(dotDotMax) then ("--dot-max " +  '"' + dotDotMax + '"') else ""} \
      ~{if defined(dotDotMin) then ("--dot-min " +  '"' + dotDotMin + '"') else ""} \
      ~{if defined(smallestSmallestDot) then ("--smallest-dot " +  '"' + smallestSmallestDot + '"') else ""}
  >>>
}