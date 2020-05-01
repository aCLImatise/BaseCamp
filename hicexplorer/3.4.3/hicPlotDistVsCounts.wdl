version 1.0

task HicPlotDistVsCounts {
  input {
    Array[String]+ matricesMatrices
    File plotPlotFile
    Array[String]+ labelsLabels
    Boolean skipSkipDiagonal
    Int maxdepthMaxdepth
    Boolean perPerChr
    Array[String]+ chromosomeChromosomeExclude
    String outfileOutfileData
    String plotPlotSize
  }
  command <<<
    hicPlotDistVsCounts \
      ~{if defined(matricesMatrices) then ("--matrices " +  '"' + matricesMatrices + '"') else ""} \
      ~{if defined(plotPlotFile) then ("--plotFile " +  '"' + plotPlotFile + '"') else ""} \
      ~{if defined(labelsLabels) then ("--labels " +  '"' + labelsLabels + '"') else ""} \
      ~{true="--skipDiagonal" false="" skipSkipDiagonal} \
      ~{if defined(maxdepthMaxdepth) then ("--maxdepth " +  '"' + maxdepthMaxdepth + '"') else ""} \
      ~{true="--perchr" false="" perPerChr} \
      ~{if defined(chromosomeChromosomeExclude) then ("--chromosomeExclude " +  '"' + chromosomeChromosomeExclude + '"') else ""} \
      ~{if defined(outfileOutfileData) then ("--outFileData " +  '"' + outfileOutfileData + '"') else ""} \
      ~{if defined(plotPlotSize) then ("--plotsize " +  '"' + plotPlotSize + '"') else ""}
  >>>
}