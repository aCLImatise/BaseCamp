version 1.0

task TaxonomicSummary.py {
  input {
    String? pythonPython
    String? taxonomicTaxonomicSummaryPy
    String? queryQueryFile
    String? resultsResultsFile
    String? summarySummaryFile
  }
  command <<<
    TaxonomicSummary.py \
      ~{pythonPython} \
      ~{taxonomicTaxonomicSummaryPy} \
      ~{queryQueryFile} \
      ~{resultsResultsFile} \
      ~{summarySummaryFile}
  >>>
}