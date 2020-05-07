version 1.0

task HicPlotSVL {
  input {
    Array[String]+ matricesMatrices
    String plotPlotFilename
    String outOutFilename
    String outOutFilenameData
    String distanceDistance
    Array[String]+ chromosomesChromosomes
    String threadsThreads
    String dpiDpi
    Array[String]+ colorColorList
  }
  command <<<
    hicPlotSVL \
      ~{if defined(matricesMatrices) then ("--matrices " +  '"' + matricesMatrices + '"') else ""} \
      ~{if defined(plotPlotFilename) then ("--plotFileName " +  '"' + plotPlotFilename + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{if defined(outOutFilenameData) then ("--outFileNameData " +  '"' + outOutFilenameData + '"') else ""} \
      ~{if defined(distanceDistance) then ("--distance " +  '"' + distanceDistance + '"') else ""} \
      ~{if defined(chromosomesChromosomes) then ("--chromosomes " +  '"' + chromosomesChromosomes + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(dpiDpi) then ("--dpi " +  '"' + dpiDpi + '"') else ""} \
      ~{if defined(colorColorList) then ("--colorList " +  '"' + colorColorList + '"') else ""}
  >>>
}