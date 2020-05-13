version 1.0

task Isocorcli {
  input {
    String mM
    String dD
    String iI
    String tracerTracer
    String resolutionResolution
    String mzMzOfResolution
    String resolutionResolutionFormulaCode
    String tracerTracerPurity
    Boolean correctCorrectNaTracer
    Boolean verboseVerbose
    String? inputInputData
  }
  command <<<
    isocorcli \
      ~{inputInputData} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{if defined(dD) then ("-D " +  '"' + dD + '"') else ""} \
      ~{if defined(iI) then ("-I " +  '"' + iI + '"') else ""} \
      ~{if defined(tracerTracer) then ("--tracer " +  '"' + tracerTracer + '"') else ""} \
      ~{if defined(resolutionResolution) then ("--resolution " +  '"' + resolutionResolution + '"') else ""} \
      ~{if defined(mzMzOfResolution) then ("--mz_of_resolution " +  '"' + mzMzOfResolution + '"') else ""} \
      ~{if defined(resolutionResolutionFormulaCode) then ("--resolution_formula_code " +  '"' + resolutionResolutionFormulaCode + '"') else ""} \
      ~{if defined(tracerTracerPurity) then ("--tracer_purity " +  '"' + tracerTracerPurity + '"') else ""} \
      ~{true="--correct_NA_tracer" false="" correctCorrectNaTracer} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}