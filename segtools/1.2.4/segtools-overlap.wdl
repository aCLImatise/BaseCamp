version 1.0

task SegtoolsOverlap {
  input {
    Boolean clobberClobber
    Boolean quietQuiet
    Boolean quickQuick
    Boolean replotReplot
    Boolean noNoPlot
    Boolean clusterCluster
    Boolean printPrintSegments
    Boolean maxMaxContrast
    String byBy
    String minMinOverlap
    File mnemonicMnemonicFile
    File featureFeatureMnemonicFile
    String outdirOutdir
    String rR
    String? optionsOptions
    String? segmentationSegmentation
    String? annotationAnnotation
  }
  command <<<
    segtools-overlap \
      ~{optionsOptions} \
      ~{true="--clobber" false="" clobberClobber} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--quick" false="" quickQuick} \
      ~{true="--replot" false="" replotReplot} \
      ~{true="--noplot" false="" noNoPlot} \
      ~{true="--cluster" false="" clusterCluster} \
      ~{true="--print-segments" false="" printPrintSegments} \
      ~{true="--max-contrast" false="" maxMaxContrast} \
      ~{if defined(byBy) then ("--by " +  '"' + byBy + '"') else ""} \
      ~{if defined(minMinOverlap) then ("--min-overlap " +  '"' + minMinOverlap + '"') else ""} \
      ~{if defined(mnemonicMnemonicFile) then ("--mnemonic-file " +  '"' + mnemonicMnemonicFile + '"') else ""} \
      ~{if defined(featureFeatureMnemonicFile) then ("--feature-mnemonic-file " +  '"' + featureFeatureMnemonicFile + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(rR) then ("-R " +  '"' + rR + '"') else ""} \
      ~{segmentationSegmentation} \
      ~{annotationAnnotation}
  >>>
}