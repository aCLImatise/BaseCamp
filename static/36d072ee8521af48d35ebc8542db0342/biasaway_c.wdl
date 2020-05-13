version 1.0

task BiasawayC {
  input {
    String bgBgDirectory
    String backgroundBackground
    String winWinLen
    String stepStep
    String deviationDeviation
    String foregroundForeground
    String nNFold
    Boolean lengthLength
    String plotPlotFilename
  }
  command <<<
    biasaway c \
      ~{if defined(bgBgDirectory) then ("--bgdirectory " +  '"' + bgBgDirectory + '"') else ""} \
      ~{if defined(backgroundBackground) then ("--background " +  '"' + backgroundBackground + '"') else ""} \
      ~{if defined(winWinLen) then ("--winlen " +  '"' + winWinLen + '"') else ""} \
      ~{if defined(stepStep) then ("--step " +  '"' + stepStep + '"') else ""} \
      ~{if defined(deviationDeviation) then ("--deviation " +  '"' + deviationDeviation + '"') else ""} \
      ~{if defined(foregroundForeground) then ("--foreground " +  '"' + foregroundForeground + '"') else ""} \
      ~{if defined(nNFold) then ("--nfold " +  '"' + nNFold + '"') else ""} \
      ~{true="--length" false="" lengthLength} \
      ~{if defined(plotPlotFilename) then ("--plot_filename " +  '"' + plotPlotFilename + '"') else ""}
  >>>
}