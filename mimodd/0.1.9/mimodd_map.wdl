version 1.0

task MimoddMap {
  input {
    String ofileOfile
    Boolean quietQuiet
    Array[Int]+ binBinSizes
    String mappingMappingSample
    String relatedRelatedParent
    String unrelatedUnrelatedParent
    Boolean inferInferMissing
    String contrastContrastSample
    String textTextFile
    String seqSeqInfo
    Boolean cloudCloudMap
    File plotPlotFile
    Boolean fitFitWidth
    Boolean noNoScatter
    Float loessLoessSpan
    Float ylimYlimScatter
    Array[String]+ pointsPointsColors
    Array[String]+ loessLoessColors
    Boolean noNoHist
    Boolean noNoKde
    Float ylimYlimHist
    Array[String]+ histHistColors
    String? analysisAnalysisMode
    String? inputInputFile
  }
  command <<<
    mimodd map \
      ~{analysisAnalysisMode} \
      ~{if defined(ofileOfile) then ("--ofile " +  '"' + ofileOfile + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(binBinSizes) then ("--bin-sizes " +  '"' + binBinSizes + '"') else ""} \
      ~{if defined(mappingMappingSample) then ("--mapping-sample " +  '"' + mappingMappingSample + '"') else ""} \
      ~{if defined(relatedRelatedParent) then ("--related-parent " +  '"' + relatedRelatedParent + '"') else ""} \
      ~{if defined(unrelatedUnrelatedParent) then ("--unrelated-parent " +  '"' + unrelatedUnrelatedParent + '"') else ""} \
      ~{true="--infer-missing" false="" inferInferMissing} \
      ~{if defined(contrastContrastSample) then ("--contrast-sample " +  '"' + contrastContrastSample + '"') else ""} \
      ~{if defined(textTextFile) then ("--text-file " +  '"' + textTextFile + '"') else ""} \
      ~{if defined(seqSeqInfo) then ("--seqinfo " +  '"' + seqSeqInfo + '"') else ""} \
      ~{true="--cloudmap" false="" cloudCloudMap} \
      ~{if defined(plotPlotFile) then ("--plot-file " +  '"' + plotPlotFile + '"') else ""} \
      ~{true="--fit-width" false="" fitFitWidth} \
      ~{true="--no-scatter" false="" noNoScatter} \
      ~{if defined(loessLoessSpan) then ("--loess-span " +  '"' + loessLoessSpan + '"') else ""} \
      ~{if defined(ylimYlimScatter) then ("--ylim-scatter " +  '"' + ylimYlimScatter + '"') else ""} \
      ~{if defined(pointsPointsColors) then ("--points-colors " +  '"' + pointsPointsColors + '"') else ""} \
      ~{if defined(loessLoessColors) then ("--loess-colors " +  '"' + loessLoessColors + '"') else ""} \
      ~{true="--no-hist" false="" noNoHist} \
      ~{true="--no-kde" false="" noNoKde} \
      ~{if defined(ylimYlimHist) then ("--ylim-hist " +  '"' + ylimYlimHist + '"') else ""} \
      ~{if defined(histHistColors) then ("--hist-colors " +  '"' + histHistColors + '"') else ""} \
      ~{inputInputFile}
  >>>
}