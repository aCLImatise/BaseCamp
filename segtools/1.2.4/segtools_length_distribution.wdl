version 1.0

task SegtoolsLengthDistribution {
  input {
    Boolean clobberClobber
    Boolean quietQuiet
    Boolean replotReplot
    Boolean noNoPlot
    Boolean noNoSegments
    Boolean noNoBases
    File mnemonicMnemonicFile
    String outdirOutdir
    String rR
    String? optionsOptions
    String? annotationAnnotation
  }
  command <<<
    segtools-length-distribution \
      ~{optionsOptions} \
      ~{true="--clobber" false="" clobberClobber} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--replot" false="" replotReplot} \
      ~{true="--noplot" false="" noNoPlot} \
      ~{true="--no-segments" false="" noNoSegments} \
      ~{true="--no-bases" false="" noNoBases} \
      ~{if defined(mnemonicMnemonicFile) then ("--mnemonic-file " +  '"' + mnemonicMnemonicFile + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(rR) then ("-R " +  '"' + rR + '"') else ""} \
      ~{annotationAnnotation}
  >>>
}