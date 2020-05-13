version 1.0

task ScHicPlotConsensusMatrices {
  input {
    String matrixMatrix
    String outOutFilename
    String dpiDpi
    String threadsThreads
    Array[String]+ chromosomesChromosomes
    String colormapColormap
  }
  command <<<
    scHicPlotConsensusMatrices \
      ~{if defined(matrixMatrix) then ("--matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{if defined(dpiDpi) then ("--dpi " +  '"' + dpiDpi + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(chromosomesChromosomes) then ("--chromosomes " +  '"' + chromosomesChromosomes + '"') else ""} \
      ~{if defined(colormapColormap) then ("--colorMap " +  '"' + colormapColormap + '"') else ""}
  >>>
}