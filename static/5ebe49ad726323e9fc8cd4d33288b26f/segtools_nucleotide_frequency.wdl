version 1.0

task SegtoolsNucleotideFrequency {
  input {
    Boolean clobberClobber
    Boolean quietQuiet
    Boolean quickQuick
    Boolean replotReplot
    Boolean noNoPlot
    File mnemonicMnemonicFile
    String outdirOutdir
    String rR
    String? optionsOptions
    String? annotationAnnotation
    String? genomeGenomeDataFile
  }
  command <<<
    segtools-nucleotide-frequency \
      ~{optionsOptions} \
      ~{true="--clobber" false="" clobberClobber} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--quick" false="" quickQuick} \
      ~{true="--replot" false="" replotReplot} \
      ~{true="--noplot" false="" noNoPlot} \
      ~{if defined(mnemonicMnemonicFile) then ("--mnemonic-file " +  '"' + mnemonicMnemonicFile + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(rR) then ("-R " +  '"' + rR + '"') else ""} \
      ~{annotationAnnotation} \
      ~{genomeGenomeDataFile}
  >>>
}