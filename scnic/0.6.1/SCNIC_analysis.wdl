version 1.0

task SCNICAnalysis.pyBetween {
  input {
    String outputOutputLoc
    String correlCorrelMethod
    String pPAdjust
    Int minMinSample
    Int maxMaxP
    Int minMinR
    Boolean sparcSparcCFilter
    String procsProcs
    Boolean forceForce
  }
  command <<<
    SCNIC_analysis.py between \
      ~{if defined(outputOutputLoc) then ("--output_loc " +  '"' + outputOutputLoc + '"') else ""} \
      ~{if defined(correlCorrelMethod) then ("--correl_method " +  '"' + correlCorrelMethod + '"') else ""} \
      ~{if defined(pPAdjust) then ("--p_adjust " +  '"' + pPAdjust + '"') else ""} \
      ~{if defined(minMinSample) then ("--min_sample " +  '"' + minMinSample + '"') else ""} \
      ~{if defined(maxMaxP) then ("--max_p " +  '"' + maxMaxP + '"') else ""} \
      ~{if defined(minMinR) then ("--min_r " +  '"' + minMinR + '"') else ""} \
      ~{true="--sparcc_filter" false="" sparcSparcCFilter} \
      ~{if defined(procsProcs) then ("--procs " +  '"' + procsProcs + '"') else ""} \
      ~{true="--force" false="" forceForce}
  >>>
}