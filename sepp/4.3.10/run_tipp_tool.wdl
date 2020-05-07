version 1.0

task RunTippTool.py {
  input {
    String geneGene
    String actionAction
    String outputOutput
    String prefixPrefix
    String inputInput
    String thresholdThreshold
  }
  command <<<
    run_tipp_tool.py \
      ~{if defined(geneGene) then ("--gene " +  '"' + geneGene + '"') else ""} \
      ~{if defined(actionAction) then ("--action " +  '"' + actionAction + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""}
  >>>
}