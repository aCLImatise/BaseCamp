version 1.0

task SegtoolsTransition {
  input {
    Boolean clobberClobber
    Boolean quietQuiet
    Boolean replotReplot
    Boolean noNoPlot
    Boolean noNoGraph
    File mnemonicMnemonicFile
    String outdirOutdir
    Boolean dendrogramDendrogram
    String probProbThreshold
    String quantileQuantileThreshold
    Boolean gmtGmtK
    String rR
    String? optionsOptions
    String? segmentationSegmentation
  }
  command <<<
    segtools-transition \
      ~{optionsOptions} \
      ~{true="--clobber" false="" clobberClobber} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--replot" false="" replotReplot} \
      ~{true="--noplot" false="" noNoPlot} \
      ~{true="--nograph" false="" noNoGraph} \
      ~{if defined(mnemonicMnemonicFile) then ("--mnemonic-file " +  '"' + mnemonicMnemonicFile + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{true="--dendrogram" false="" dendrogramDendrogram} \
      ~{if defined(probProbThreshold) then ("--prob-threshold " +  '"' + probProbThreshold + '"') else ""} \
      ~{if defined(quantileQuantileThreshold) then ("--quantile-threshold " +  '"' + quantileQuantileThreshold + '"') else ""} \
      ~{true="--gmtk" false="" gmtGmtK} \
      ~{if defined(rR) then ("-R " +  '"' + rR + '"') else ""} \
      ~{segmentationSegmentation}
  >>>
}