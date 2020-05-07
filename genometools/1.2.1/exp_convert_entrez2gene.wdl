version 1.0

task ExpConvertEntrez2gene.py {
  input {
    File expressionExpressionFile
    File geneGeneFile
    File entrezEntrez2geneFile
    File outputOutputFile
    Boolean stripStripAffySuffix
    File logLogFile
    Boolean quietQuiet
    Boolean verboseVerbose
  }
  command <<<
    exp_convert_entrez2gene.py \
      ~{if defined(expressionExpressionFile) then ("--expression-file " +  '"' + expressionExpressionFile + '"') else ""} \
      ~{if defined(geneGeneFile) then ("--gene-file " +  '"' + geneGeneFile + '"') else ""} \
      ~{if defined(entrezEntrez2geneFile) then ("--entrez2gene-file " +  '"' + entrezEntrez2geneFile + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{true="--strip-affy-suffix" false="" stripStripAffySuffix} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}