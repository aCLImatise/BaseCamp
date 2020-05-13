version 1.0

task HicCorrectMatrixDiagnosticPlot {
  input {
    String matrixMatrix
    String plotPlotName
    Array[String]+ chromosomesChromosomes
    String xmaxXmax
    Boolean perPerChr
    Boolean verboseVerbose
  }
  command <<<
    hicCorrectMatrix diagnostic_plot \
      ~{if defined(matrixMatrix) then ("--matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{if defined(plotPlotName) then ("--plotName " +  '"' + plotPlotName + '"') else ""} \
      ~{if defined(chromosomesChromosomes) then ("--chromosomes " +  '"' + chromosomesChromosomes + '"') else ""} \
      ~{if defined(xmaxXmax) then ("--xMax " +  '"' + xmaxXmax + '"') else ""} \
      ~{true="--perchr" false="" perPerChr} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}