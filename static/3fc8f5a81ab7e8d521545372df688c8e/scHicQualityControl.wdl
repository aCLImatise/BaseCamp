version 1.0

task ScHicQualityControl {
  input {
    String matrixMatrix
    String outputsOutputsCool
    Int minimumMinimumReadCoverage
    Int minimumMinimumDensity
    Int maximumMaximumRegionToConsider
    Array[String]+ chromosomesChromosomes
    String outOutFilenameDensity
    String outOutFilenameReadCoverage
    String outOutFilenameQcReport
    Boolean plotPlotOnly
    String dpiDpi
    String threadsThreads
  }
  command <<<
    scHicQualityControl \
      ~{if defined(matrixMatrix) then ("--matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{if defined(outputsOutputsCool) then ("--outputScool " +  '"' + outputsOutputsCool + '"') else ""} \
      ~{if defined(minimumMinimumReadCoverage) then ("--minimumReadCoverage " +  '"' + minimumMinimumReadCoverage + '"') else ""} \
      ~{if defined(minimumMinimumDensity) then ("--minimumDensity " +  '"' + minimumMinimumDensity + '"') else ""} \
      ~{if defined(maximumMaximumRegionToConsider) then ("--maximumRegionToConsider " +  '"' + maximumMaximumRegionToConsider + '"') else ""} \
      ~{if defined(chromosomesChromosomes) then ("--chromosomes " +  '"' + chromosomesChromosomes + '"') else ""} \
      ~{if defined(outOutFilenameDensity) then ("--outFileNameDensity " +  '"' + outOutFilenameDensity + '"') else ""} \
      ~{if defined(outOutFilenameReadCoverage) then ("--outFileNameReadCoverage " +  '"' + outOutFilenameReadCoverage + '"') else ""} \
      ~{if defined(outOutFilenameQcReport) then ("--outFileNameQCReport " +  '"' + outOutFilenameQcReport + '"') else ""} \
      ~{true="--plotOnly" false="" plotPlotOnly} \
      ~{if defined(dpiDpi) then ("--dpi " +  '"' + dpiDpi + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}