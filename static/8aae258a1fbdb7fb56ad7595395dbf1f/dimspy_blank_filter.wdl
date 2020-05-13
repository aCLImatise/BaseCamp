version 1.0

task DimspyBlankFilter {
  input {
    String inputInput
    String outputOutput
    String blankBlankLabel
    Int minMinFraction
    String functionFunction
    Int minMinFoldChange
    Boolean removeRemoveBlankSamples
    String labelsLabels
  }
  command <<<
    dimspy blank-filter \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(blankBlankLabel) then ("--blank-label " +  '"' + blankBlankLabel + '"') else ""} \
      ~{if defined(minMinFraction) then ("--min-fraction " +  '"' + minMinFraction + '"') else ""} \
      ~{if defined(functionFunction) then ("--function " +  '"' + functionFunction + '"') else ""} \
      ~{if defined(minMinFoldChange) then ("--min-fold-change " +  '"' + minMinFoldChange + '"') else ""} \
      ~{true="--remove-blank-samples" false="" removeRemoveBlankSamples} \
      ~{if defined(labelsLabels) then ("--labels " +  '"' + labelsLabels + '"') else ""}
  >>>
}