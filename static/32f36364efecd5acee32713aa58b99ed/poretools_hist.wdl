version 1.0

task PoretoolsHist {
  input {
    Boolean quietQuiet
    Int minMinLength
    Int maxMaxLength
    String numNumBins
    String saveSaveAs
    Boolean themeThemeBw
    Boolean watchWatch
    File? filesFiles
  }
  command <<<
    poretools hist \
      ~{filesFiles} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(minMinLength) then ("--min-length " +  '"' + minMinLength + '"') else ""} \
      ~{if defined(maxMaxLength) then ("--max-length " +  '"' + maxMaxLength + '"') else ""} \
      ~{if defined(numNumBins) then ("--num-bins " +  '"' + numNumBins + '"') else ""} \
      ~{if defined(saveSaveAs) then ("--saveas " +  '"' + saveSaveAs + '"') else ""} \
      ~{true="--theme-bw" false="" themeThemeBw} \
      ~{true="--watch" false="" watchWatch}
  >>>
}