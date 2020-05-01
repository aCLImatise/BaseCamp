version 1.0

task HicAggregateContacts {
  input {
    String matrixMatrix
    String outOutFilename
    String bedBed
    String rangeRange
    String bed2Bed2
    String numberNumberOfBins
    Boolean transformTransform
    String avgAvgType
    String dpiDpi
    String outfileOutfilePrefixMatrix
    String outfileOutfileContactPairs
    String diagnosticDiagnosticHeatMapFile
    String kKMeans
    String hcHcLust
    String howHowToCluster
    Array[String]+ chromosomesChromosomes
    String colormapColormap
    Boolean plotPlotType
    String vminVmin
    String vmaxVmax
  }
  command <<<
    hicAggregateContacts \
      ~{if defined(matrixMatrix) then ("--matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{if defined(bedBed) then ("--BED " +  '"' + bedBed + '"') else ""} \
      ~{if defined(rangeRange) then ("--range " +  '"' + rangeRange + '"') else ""} \
      ~{if defined(bed2Bed2) then ("--BED2 " +  '"' + bed2Bed2 + '"') else ""} \
      ~{if defined(numberNumberOfBins) then ("--numberOfBins " +  '"' + numberNumberOfBins + '"') else ""} \
      ~{true="--transform" false="" transformTransform} \
      ~{if defined(avgAvgType) then ("--avgType " +  '"' + avgAvgType + '"') else ""} \
      ~{if defined(dpiDpi) then ("--dpi " +  '"' + dpiDpi + '"') else ""} \
      ~{if defined(outfileOutfilePrefixMatrix) then ("--outFilePrefixMatrix " +  '"' + outfileOutfilePrefixMatrix + '"') else ""} \
      ~{if defined(outfileOutfileContactPairs) then ("--outFileContactPairs " +  '"' + outfileOutfileContactPairs + '"') else ""} \
      ~{if defined(diagnosticDiagnosticHeatMapFile) then ("--diagnosticHeatmapFile " +  '"' + diagnosticDiagnosticHeatMapFile + '"') else ""} \
      ~{if defined(kKMeans) then ("--kmeans " +  '"' + kKMeans + '"') else ""} \
      ~{if defined(hcHcLust) then ("--hclust " +  '"' + hcHcLust + '"') else ""} \
      ~{if defined(howHowToCluster) then ("--howToCluster " +  '"' + howHowToCluster + '"') else ""} \
      ~{if defined(chromosomesChromosomes) then ("--chromosomes " +  '"' + chromosomesChromosomes + '"') else ""} \
      ~{if defined(colormapColormap) then ("--colorMap " +  '"' + colormapColormap + '"') else ""} \
      ~{true="--plotType" false="" plotPlotType} \
      ~{if defined(vminVmin) then ("--vMin " +  '"' + vminVmin + '"') else ""} \
      ~{if defined(vmaxVmax) then ("--vMax " +  '"' + vmaxVmax + '"') else ""}
  >>>
}