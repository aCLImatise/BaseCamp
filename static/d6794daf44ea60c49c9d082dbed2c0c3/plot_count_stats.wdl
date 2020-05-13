version 1.0

task PlotCountStats {
  input {
    String inputInput
    String metaMeta
    String outputOutputPrefix
    String excludeExcludeSuffix
    String firstFirstChr
    String secondSecondChr
    String constConstChr
    String var1Var1Marker
    Array[String]+ var1Var1MarkerVals
    String var2Var2Marker
    Boolean var2Var2MarkerVals
    String markerMarkerSize
    String markerMarkerColor
    String markerMarkerShape
    String markerMarkerAlpha
    String legendLegendMarkerScale
    String xXTitle
    String yYTitle
  }
  command <<<
    plot_count_stats \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(metaMeta) then ("--meta " +  '"' + metaMeta + '"') else ""} \
      ~{if defined(outputOutputPrefix) then ("--output_prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{if defined(excludeExcludeSuffix) then ("--exclude_suffix " +  '"' + excludeExcludeSuffix + '"') else ""} \
      ~{if defined(firstFirstChr) then ("--first_chr " +  '"' + firstFirstChr + '"') else ""} \
      ~{if defined(secondSecondChr) then ("--second_chr " +  '"' + secondSecondChr + '"') else ""} \
      ~{if defined(constConstChr) then ("--const_chr " +  '"' + constConstChr + '"') else ""} \
      ~{if defined(var1Var1Marker) then ("--var1_marker " +  '"' + var1Var1Marker + '"') else ""} \
      ~{if defined(var1Var1MarkerVals) then ("--var1_marker_vals " +  '"' + var1Var1MarkerVals + '"') else ""} \
      ~{if defined(var2Var2Marker) then ("--var2_marker " +  '"' + var2Var2Marker + '"') else ""} \
      ~{true="--var2_marker_vals" false="" var2Var2MarkerVals} \
      ~{if defined(markerMarkerSize) then ("--marker_size " +  '"' + markerMarkerSize + '"') else ""} \
      ~{if defined(markerMarkerColor) then ("--marker_color " +  '"' + markerMarkerColor + '"') else ""} \
      ~{if defined(markerMarkerShape) then ("--marker_shape " +  '"' + markerMarkerShape + '"') else ""} \
      ~{if defined(markerMarkerAlpha) then ("--marker_alpha " +  '"' + markerMarkerAlpha + '"') else ""} \
      ~{if defined(legendLegendMarkerScale) then ("--legend_marker_scale " +  '"' + legendLegendMarkerScale + '"') else ""} \
      ~{if defined(xXTitle) then ("--x_title " +  '"' + xXTitle + '"') else ""} \
      ~{if defined(yYTitle) then ("--y_title " +  '"' + yYTitle + '"') else ""}
  >>>
}