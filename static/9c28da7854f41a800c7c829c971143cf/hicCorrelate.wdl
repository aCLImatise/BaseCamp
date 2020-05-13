version 1.0

task HicCorrelate {
  input {
    Array[String]+ matricesMatrices
    String zminZmin
    String zmaxZmax
    Boolean colormapColormap
    File plotPlotFileFormat
    Boolean plotPlotNumbers
    String methodMethod
    Boolean log1pLog1p
    String labelsLabels
    String rangeRange
    String outOutFilenameHeatMap
    String outOutFilenameScatter
    Array[String]+ chromosomesChromosomes
    String threadsThreads
  }
  command <<<
    hicCorrelate \
      ~{if defined(matricesMatrices) then ("--matrices " +  '"' + matricesMatrices + '"') else ""} \
      ~{if defined(zminZmin) then ("--zMin " +  '"' + zminZmin + '"') else ""} \
      ~{if defined(zmaxZmax) then ("--zMax " +  '"' + zmaxZmax + '"') else ""} \
      ~{true="--colorMap" false="" colormapColormap} \
      ~{if defined(plotPlotFileFormat) then ("--plotFileFormat " +  '"' + plotPlotFileFormat + '"') else ""} \
      ~{true="--plotNumbers" false="" plotPlotNumbers} \
      ~{if defined(methodMethod) then ("--method " +  '"' + methodMethod + '"') else ""} \
      ~{true="--log1p" false="" log1pLog1p} \
      ~{if defined(labelsLabels) then ("--labels " +  '"' + labelsLabels + '"') else ""} \
      ~{if defined(rangeRange) then ("--range " +  '"' + rangeRange + '"') else ""} \
      ~{if defined(outOutFilenameHeatMap) then ("--outFileNameHeatmap " +  '"' + outOutFilenameHeatMap + '"') else ""} \
      ~{if defined(outOutFilenameScatter) then ("--outFileNameScatter " +  '"' + outOutFilenameScatter + '"') else ""} \
      ~{if defined(chromosomesChromosomes) then ("--chromosomes " +  '"' + chromosomesChromosomes + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}