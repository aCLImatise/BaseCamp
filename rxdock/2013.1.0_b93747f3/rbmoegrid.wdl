version 1.0

task Rbmoegrid {
  input {
    String outputOutput
    String receptorReceptorParam
    String sfSfParam
    String gridGridStep
    String gridGridBorder
    String triposTriposAtomType
  }
  command <<<
    rbmoegrid \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(receptorReceptorParam) then ("--receptor-param " +  '"' + receptorReceptorParam + '"') else ""} \
      ~{if defined(sfSfParam) then ("--sf-param " +  '"' + sfSfParam + '"') else ""} \
      ~{if defined(gridGridStep) then ("--grid-step " +  '"' + gridGridStep + '"') else ""} \
      ~{if defined(gridGridBorder) then ("--grid-border " +  '"' + gridGridBorder + '"') else ""} \
      ~{if defined(triposTriposAtomType) then ("--tripos-atom-type " +  '"' + triposTriposAtomType + '"') else ""}
  >>>
}