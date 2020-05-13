version 1.0

task AnviAnalyzeSynteny {
  input {
    String nNGramWindowRange
    File outputOutputFile
    Boolean analyzeAnalyzeUnknownFunctions
  }
  command <<<
    anvi-analyze-synteny \
      ~{if defined(nNGramWindowRange) then ("--ngram-window-range " +  '"' + nNGramWindowRange + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{true="--analyze-unknown-functions" false="" analyzeAnalyzeUnknownFunctions}
  >>>
}