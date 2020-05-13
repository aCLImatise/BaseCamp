version 1.0

task LastDotplot {
  input {
    File fontFontFile
    Int fontFontSize
    String labelsLabels1
    String labelsLabels2
    String rot1Rot1
    String rot2Rot2
    File bed1Bed1
    File bed2Bed2
    File rmsk1Rmsk1
    File rmsk2Rmsk2
    File genepred1Genepred1
    File genepred2Genepred2
    String exonExonColor
    String cdsCdsColor
    File gap1Gap1
    File gap2Gap2
    String bridgedBridgedColor
    String unUnBridgedColor
  }
  command <<<
    last-dotplot \
      ~{if defined(fontFontFile) then ("--fontfile " +  '"' + fontFontFile + '"') else ""} \
      ~{if defined(fontFontSize) then ("--fontsize " +  '"' + fontFontSize + '"') else ""} \
      ~{if defined(labelsLabels1) then ("--labels1 " +  '"' + labelsLabels1 + '"') else ""} \
      ~{if defined(labelsLabels2) then ("--labels2 " +  '"' + labelsLabels2 + '"') else ""} \
      ~{if defined(rot1Rot1) then ("--rot1 " +  '"' + rot1Rot1 + '"') else ""} \
      ~{if defined(rot2Rot2) then ("--rot2 " +  '"' + rot2Rot2 + '"') else ""} \
      ~{if defined(bed1Bed1) then ("--bed1 " +  '"' + bed1Bed1 + '"') else ""} \
      ~{if defined(bed2Bed2) then ("--bed2 " +  '"' + bed2Bed2 + '"') else ""} \
      ~{if defined(rmsk1Rmsk1) then ("--rmsk1 " +  '"' + rmsk1Rmsk1 + '"') else ""} \
      ~{if defined(rmsk2Rmsk2) then ("--rmsk2 " +  '"' + rmsk2Rmsk2 + '"') else ""} \
      ~{if defined(genepred1Genepred1) then ("--genePred1 " +  '"' + genepred1Genepred1 + '"') else ""} \
      ~{if defined(genepred2Genepred2) then ("--genePred2 " +  '"' + genepred2Genepred2 + '"') else ""} \
      ~{if defined(exonExonColor) then ("--exon-color " +  '"' + exonExonColor + '"') else ""} \
      ~{if defined(cdsCdsColor) then ("--cds-color " +  '"' + cdsCdsColor + '"') else ""} \
      ~{if defined(gap1Gap1) then ("--gap1 " +  '"' + gap1Gap1 + '"') else ""} \
      ~{if defined(gap2Gap2) then ("--gap2 " +  '"' + gap2Gap2 + '"') else ""} \
      ~{if defined(bridgedBridgedColor) then ("--bridged-color " +  '"' + bridgedBridgedColor + '"') else ""} \
      ~{if defined(unUnBridgedColor) then ("--unbridged-color " +  '"' + unUnBridgedColor + '"') else ""}
  >>>
}