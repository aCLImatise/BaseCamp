version 1.0

task PlotRoh.py {
  input {
    Boolean highlightHighlight
    Boolean interactiveInteractive
    String minMinLength
    String minMinMarkers
    File outfileOutfile
    String minMinQual
    Boolean regionRegion
    File samplesSamples
    String? optionsOptions
    String? dirDir
  }
  command <<<
    plot-roh.py \
      ~{optionsOptions} \
      ~{true="--highlight" false="" highlightHighlight} \
      ~{true="--interactive" false="" interactiveInteractive} \
      ~{if defined(minMinLength) then ("--min-length " +  '"' + minMinLength + '"') else ""} \
      ~{if defined(minMinMarkers) then ("--min-markers " +  '"' + minMinMarkers + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(minMinQual) then ("--min-qual " +  '"' + minMinQual + '"') else ""} \
      ~{true="--region" false="" regionRegion} \
      ~{if defined(samplesSamples) then ("--samples " +  '"' + samplesSamples + '"') else ""} \
      ~{dirDir}
  >>>
}