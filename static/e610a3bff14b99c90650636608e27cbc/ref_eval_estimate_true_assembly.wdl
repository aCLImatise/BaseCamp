version 1.0

task RefEvalEstimateTrueAssembly {
  input {
    String referenceReference
    String expressionExpression
    Boolean pairedPairedEnd
    String assemblyAssembly
    String minMinOverlap
    String minMinAlignmentProb
    String alignmentAlignmentPolicy
  }
  command <<<
    ref-eval-estimate-true-assembly \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(expressionExpression) then ("--expression " +  '"' + expressionExpression + '"') else ""} \
      ~{true="--paired-end" false="" pairedPairedEnd} \
      ~{if defined(assemblyAssembly) then ("--assembly " +  '"' + assemblyAssembly + '"') else ""} \
      ~{if defined(minMinOverlap) then ("--min-overlap " +  '"' + minMinOverlap + '"') else ""} \
      ~{if defined(minMinAlignmentProb) then ("--min-alignment-prob " +  '"' + minMinAlignmentProb + '"') else ""} \
      ~{if defined(alignmentAlignmentPolicy) then ("--alignment-policy " +  '"' + alignmentAlignmentPolicy + '"') else ""}
  >>>
}