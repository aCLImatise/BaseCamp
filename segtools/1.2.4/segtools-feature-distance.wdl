version 1.0

task SegtoolsFeatureDistance {
  input {
    Boolean clobberClobber
    Boolean quietQuiet
    Boolean strandedStranded
    Boolean printPrintNearest
    Boolean allAllOverlapping
    Boolean noNoPlot
    Boolean replotReplot
    String nNBins
    String binBinWidth
    File mnemonicMnemonicFile
    String outdirOutdir
    String rR
    String? optionsOptions
    String? segmentationSegmentation
    String? annotationAnnotation
  }
  command <<<
    segtools-feature-distance \
      ~{optionsOptions} \
      ~{true="--clobber" false="" clobberClobber} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--stranded" false="" strandedStranded} \
      ~{true="--print-nearest" false="" printPrintNearest} \
      ~{true="--all-overlapping" false="" allAllOverlapping} \
      ~{true="--noplot" false="" noNoPlot} \
      ~{true="--replot" false="" replotReplot} \
      ~{if defined(nNBins) then ("--n-bins " +  '"' + nNBins + '"') else ""} \
      ~{if defined(binBinWidth) then ("--bin-width " +  '"' + binBinWidth + '"') else ""} \
      ~{if defined(mnemonicMnemonicFile) then ("--mnemonic-file " +  '"' + mnemonicMnemonicFile + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(rR) then ("-R " +  '"' + rR + '"') else ""} \
      ~{segmentationSegmentation} \
      ~{annotationAnnotation}
  >>>
}