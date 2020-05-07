version 1.0

task PauvreBrowser {
  input {
    Boolean quietQuiet
    String chromosomeChromosomeId
    String dpiDpi
    Array[String]+ fileFileForm
    Boolean noNoTimestamp
    String outputOutputBaseName
    File pathPath
    Array[String]+ plotPlotCommands
    Array[String]+ ratioRatio
    String referenceReference
    String startStart
    String stopStop
    Boolean transparentTransparent
  }
  command <<<
    pauvre browser \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(chromosomeChromosomeId) then ("--chromosomeid " +  '"' + chromosomeChromosomeId + '"') else ""} \
      ~{if defined(dpiDpi) then ("--dpi " +  '"' + dpiDpi + '"') else ""} \
      ~{if defined(fileFileForm) then ("--fileform " +  '"' + fileFileForm + '"') else ""} \
      ~{true="--no_timestamp" false="" noNoTimestamp} \
      ~{if defined(outputOutputBaseName) then ("--output-base-name " +  '"' + outputOutputBaseName + '"') else ""} \
      ~{if defined(pathPath) then ("--path " +  '"' + pathPath + '"') else ""} \
      ~{if defined(plotPlotCommands) then ("--plot_commands " +  '"' + plotPlotCommands + '"') else ""} \
      ~{if defined(ratioRatio) then ("--ratio " +  '"' + ratioRatio + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(startStart) then ("--start " +  '"' + startStart + '"') else ""} \
      ~{if defined(stopStop) then ("--stop " +  '"' + stopStop + '"') else ""} \
      ~{true="--transparent" false="" transparentTransparent}
  >>>
}