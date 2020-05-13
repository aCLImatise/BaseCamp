version 1.0

task SegtoolsAggregation {
  input {
    File mnemonicMnemonicFile
    String outdirOutdir
    Boolean clobberClobber
    Boolean quietQuiet
    Boolean quickQuick
    Boolean replotReplot
    Boolean noNoPlot
    Boolean groupsGroups
    Boolean normalizeNormalize
    String modeMode
    String flankFlankBases
    String regionRegionSamples
    String intronIntronSamples
    String exonExonSamples
    String rR
    String? optionsOptions
    String? segmentationSegmentation
    String? annotationAnnotation
  }
  command <<<
    segtools-aggregation \
      ~{optionsOptions} \
      ~{if defined(mnemonicMnemonicFile) then ("--mnemonic-file " +  '"' + mnemonicMnemonicFile + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{true="--clobber" false="" clobberClobber} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--quick" false="" quickQuick} \
      ~{true="--replot" false="" replotReplot} \
      ~{true="--noplot" false="" noNoPlot} \
      ~{true="--groups" false="" groupsGroups} \
      ~{true="--normalize" false="" normalizeNormalize} \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{if defined(flankFlankBases) then ("--flank-bases " +  '"' + flankFlankBases + '"') else ""} \
      ~{if defined(regionRegionSamples) then ("--region-samples " +  '"' + regionRegionSamples + '"') else ""} \
      ~{if defined(intronIntronSamples) then ("--intron-samples " +  '"' + intronIntronSamples + '"') else ""} \
      ~{if defined(exonExonSamples) then ("--exon-samples " +  '"' + exonExonSamples + '"') else ""} \
      ~{if defined(rR) then ("-R " +  '"' + rR + '"') else ""} \
      ~{segmentationSegmentation} \
      ~{annotationAnnotation}
  >>>
}