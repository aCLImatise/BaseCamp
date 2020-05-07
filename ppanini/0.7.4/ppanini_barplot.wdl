version 1.0

task PpaniniBarplot {
  input {
    String pPPaniniInput
    String pPPaniniOutput
    String summarySummaryTable
    String scaleScale
    String outputOutput
  }
  command <<<
    ppanini_barplot \
      ~{if defined(pPPaniniInput) then ("--ppanini-input " +  '"' + pPPaniniInput + '"') else ""} \
      ~{if defined(pPPaniniOutput) then ("--ppanini-output " +  '"' + pPPaniniOutput + '"') else ""} \
      ~{if defined(summarySummaryTable) then ("--summary-table " +  '"' + summarySummaryTable + '"') else ""} \
      ~{if defined(scaleScale) then ("--scale " +  '"' + scaleScale + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}