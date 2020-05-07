version 1.0

task ImfusionCtg {
  input {
    String insertionsInsertions
    String referenceReference
    Array[String]+ geneGeneIds
    String outputOutput
    String thresholdThreshold
    String patternPattern
    String windowWindow
    Array[String]+ chromosomesChromosomes
    Int minMinDepth
    String expressionExpression
    String deDeThreshold
  }
  command <<<
    imfusion-ctg \
      ~{if defined(insertionsInsertions) then ("--insertions " +  '"' + insertionsInsertions + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(geneGeneIds) then ("--gene_ids " +  '"' + geneGeneIds + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(patternPattern) then ("--pattern " +  '"' + patternPattern + '"') else ""} \
      ~{if defined(windowWindow) then ("--window " +  '"' + windowWindow + '"') else ""} \
      ~{if defined(chromosomesChromosomes) then ("--chromosomes " +  '"' + chromosomesChromosomes + '"') else ""} \
      ~{if defined(minMinDepth) then ("--min_depth " +  '"' + minMinDepth + '"') else ""} \
      ~{if defined(expressionExpression) then ("--expression " +  '"' + expressionExpression + '"') else ""} \
      ~{if defined(deDeThreshold) then ("--de_threshold " +  '"' + deDeThreshold + '"') else ""}
  >>>
}