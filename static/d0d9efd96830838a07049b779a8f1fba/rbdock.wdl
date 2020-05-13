version 1.0

task Rbdock {
  input {
    String inputInput
    String outputOutput
    String receptorReceptorParam
    String dockingDockingParam
    String numberNumber
    Boolean protonProtonAte
    Boolean deDeProtonAte
    Boolean allAllHydrogens
    String thresholdThreshold
    Boolean continueContinue
    String filterFilter
    String traceTrace
    String seedSeed
  }
  command <<<
    rbdock \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(receptorReceptorParam) then ("--receptor-param " +  '"' + receptorReceptorParam + '"') else ""} \
      ~{if defined(dockingDockingParam) then ("--docking-param " +  '"' + dockingDockingParam + '"') else ""} \
      ~{if defined(numberNumber) then ("--number " +  '"' + numberNumber + '"') else ""} \
      ~{true="--protonate" false="" protonProtonAte} \
      ~{true="--deprotonate" false="" deDeProtonAte} \
      ~{true="--all-hydrogens" false="" allAllHydrogens} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{true="--continue" false="" continueContinue} \
      ~{if defined(filterFilter) then ("--filter " +  '"' + filterFilter + '"') else ""} \
      ~{if defined(traceTrace) then ("--trace " +  '"' + traceTrace + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""}
  >>>
}