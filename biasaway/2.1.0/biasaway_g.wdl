version 1.0

task BiasawayG {
  input {
    String bgBgDirectory
    String backgroundBackground
    String foregroundForeground
    String nNFold
    Boolean lengthLength
    String plotPlotFilename
  }
  command <<<
    biasaway g \
      ~{if defined(bgBgDirectory) then ("--bgdirectory " +  '"' + bgBgDirectory + '"') else ""} \
      ~{if defined(backgroundBackground) then ("--background " +  '"' + backgroundBackground + '"') else ""} \
      ~{if defined(foregroundForeground) then ("--foreground " +  '"' + foregroundForeground + '"') else ""} \
      ~{if defined(nNFold) then ("--nfold " +  '"' + nNFold + '"') else ""} \
      ~{true="--length" false="" lengthLength} \
      ~{if defined(plotPlotFilename) then ("--plot_filename " +  '"' + plotPlotFilename + '"') else ""}
  >>>
}