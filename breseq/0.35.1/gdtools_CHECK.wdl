version 1.0

task GdtoolsCHECK {
  input {
    String outputOutput
    String referenceReference
    Boolean evidenceEvidence
    String jcJcBuffer
    String jcJcShorten
    Boolean jcJcOnlyAccepted
    String plotPlotJc
    Boolean verboseVerbose
  }
  command <<<
    gdtools CHECK \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{true="--evidence" false="" evidenceEvidence} \
      ~{if defined(jcJcBuffer) then ("--jc-buffer " +  '"' + jcJcBuffer + '"') else ""} \
      ~{if defined(jcJcShorten) then ("--jc-shorten " +  '"' + jcJcShorten + '"') else ""} \
      ~{true="--jc-only-accepted" false="" jcJcOnlyAccepted} \
      ~{if defined(plotPlotJc) then ("--plot-jc " +  '"' + plotPlotJc + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}