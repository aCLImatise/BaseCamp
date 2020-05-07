version 1.0

task SamplotPlot {
  input {
    String markerMarkerSize
    Array[String]+ titlesTitles
    String referenceReference
    String zZ
    Array[String]+ bamsBams
    String outputOutputFile
    String startStart
    String endEnd
    String chromChrom
    String windowWindow
    Int maxMaxDepth
    Int minMinQ
    String svSvType
    String transcriptTranscriptFile
    Array[String]+ annotationAnnotationFiles
    String coverageCoverageTrackType
    Boolean printPrintArgs
    String plotPlotHeight
    String plotPlotWidth
    Int minMinMQual
    Boolean jsonJsonOnly
    String startStartCi
    String endEndCi
    String longLongRead
    Int minMinEventSize
    String xXAxisLabelFontSize
    String yaxisYaxisLabelFontSize
    String legendLegendFontSize
    String annotationAnnotationFontSize
    Boolean commonCommonInsertSize
    Boolean hideHideAnnotationLabels
    Boolean coverageCoverageOnly
    Boolean sameSameYaxisScales
    String zoomZoom
    String debugDebug
  }
  command <<<
    samplot plot \
      ~{if defined(markerMarkerSize) then ("--marker_size " +  '"' + markerMarkerSize + '"') else ""} \
      ~{if defined(titlesTitles) then ("--titles " +  '"' + titlesTitles + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(zZ) then ("--z " +  '"' + zZ + '"') else ""} \
      ~{if defined(bamsBams) then ("--bams " +  '"' + bamsBams + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output_file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(startStart) then ("--start " +  '"' + startStart + '"') else ""} \
      ~{if defined(endEnd) then ("--end " +  '"' + endEnd + '"') else ""} \
      ~{if defined(chromChrom) then ("--chrom " +  '"' + chromChrom + '"') else ""} \
      ~{if defined(windowWindow) then ("--window " +  '"' + windowWindow + '"') else ""} \
      ~{if defined(maxMaxDepth) then ("--max_depth " +  '"' + maxMaxDepth + '"') else ""} \
      ~{if defined(minMinQ) then ("--minq " +  '"' + minMinQ + '"') else ""} \
      ~{if defined(svSvType) then ("--sv_type " +  '"' + svSvType + '"') else ""} \
      ~{if defined(transcriptTranscriptFile) then ("--transcript_file " +  '"' + transcriptTranscriptFile + '"') else ""} \
      ~{if defined(annotationAnnotationFiles) then ("--annotation_files " +  '"' + annotationAnnotationFiles + '"') else ""} \
      ~{if defined(coverageCoverageTrackType) then ("--coverage_tracktype " +  '"' + coverageCoverageTrackType + '"') else ""} \
      ~{true="--print_args" false="" printPrintArgs} \
      ~{if defined(plotPlotHeight) then ("--plot_height " +  '"' + plotPlotHeight + '"') else ""} \
      ~{if defined(plotPlotWidth) then ("--plot_width " +  '"' + plotPlotWidth + '"') else ""} \
      ~{if defined(minMinMQual) then ("--min_mqual " +  '"' + minMinMQual + '"') else ""} \
      ~{true="--json_only" false="" jsonJsonOnly} \
      ~{if defined(startStartCi) then ("--start_ci " +  '"' + startStartCi + '"') else ""} \
      ~{if defined(endEndCi) then ("--end_ci " +  '"' + endEndCi + '"') else ""} \
      ~{if defined(longLongRead) then ("--long_read " +  '"' + longLongRead + '"') else ""} \
      ~{if defined(minMinEventSize) then ("--min_event_size " +  '"' + minMinEventSize + '"') else ""} \
      ~{if defined(xXAxisLabelFontSize) then ("--xaxis_label_fontsize " +  '"' + xXAxisLabelFontSize + '"') else ""} \
      ~{if defined(yaxisYaxisLabelFontSize) then ("--yaxis_label_fontsize " +  '"' + yaxisYaxisLabelFontSize + '"') else ""} \
      ~{if defined(legendLegendFontSize) then ("--legend_fontsize " +  '"' + legendLegendFontSize + '"') else ""} \
      ~{if defined(annotationAnnotationFontSize) then ("--annotation_fontsize " +  '"' + annotationAnnotationFontSize + '"') else ""} \
      ~{true="--common_insert_size" false="" commonCommonInsertSize} \
      ~{true="--hide_annotation_labels" false="" hideHideAnnotationLabels} \
      ~{true="--coverage_only" false="" coverageCoverageOnly} \
      ~{true="--same_yaxis_scales" false="" sameSameYaxisScales} \
      ~{if defined(zoomZoom) then ("--zoom " +  '"' + zoomZoom + '"') else ""} \
      ~{if defined(debugDebug) then ("--debug " +  '"' + debugDebug + '"') else ""}
  >>>
}