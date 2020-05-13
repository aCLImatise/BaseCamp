version 1.0

task SegtoolsHtmlReport {
  input {
    Boolean clobberClobber
    Boolean quietQuiet
    File mnemonicMnemonicFile
    File layeredLayeredBed
    File bigBigBed
    String resultsResultsDir
    File outfileOutfile
    String? optionsOptions
    String? segmentationSegmentation
  }
  command <<<
    segtools-html-report \
      ~{optionsOptions} \
      ~{true="--clobber" false="" clobberClobber} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(mnemonicMnemonicFile) then ("--mnemonic-file " +  '"' + mnemonicMnemonicFile + '"') else ""} \
      ~{if defined(layeredLayeredBed) then ("--layered-bed " +  '"' + layeredLayeredBed + '"') else ""} \
      ~{if defined(bigBigBed) then ("--big-bed " +  '"' + bigBigBed + '"') else ""} \
      ~{if defined(resultsResultsDir) then ("--results-dir " +  '"' + resultsResultsDir + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{segmentationSegmentation}
  >>>
}