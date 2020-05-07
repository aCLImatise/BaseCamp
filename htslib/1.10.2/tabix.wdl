version 1.0

task Tabix {
  input {
    Int beginBegin
    String commentComment
    Boolean csiCsi
    Int endEnd
    Boolean forceForce
    Int minMinShift
    String presetPreset
    Int sequenceSequence
    Int skipSkipLines
    Boolean onlyOnlyHeader
    Boolean listListChromS
    File reReHeader
    File regionsRegions
    File targetsTargets
    Boolean dD
  }
  command <<<
    tabix \
      ~{if defined(beginBegin) then ("--begin " +  '"' + beginBegin + '"') else ""} \
      ~{if defined(commentComment) then ("--comment " +  '"' + commentComment + '"') else ""} \
      ~{true="--csi" false="" csiCsi} \
      ~{if defined(endEnd) then ("--end " +  '"' + endEnd + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(minMinShift) then ("--min-shift " +  '"' + minMinShift + '"') else ""} \
      ~{if defined(presetPreset) then ("--preset " +  '"' + presetPreset + '"') else ""} \
      ~{if defined(sequenceSequence) then ("--sequence " +  '"' + sequenceSequence + '"') else ""} \
      ~{if defined(skipSkipLines) then ("--skip-lines " +  '"' + skipSkipLines + '"') else ""} \
      ~{true="--only-header" false="" onlyOnlyHeader} \
      ~{true="--list-chroms" false="" listListChromS} \
      ~{if defined(reReHeader) then ("--reheader " +  '"' + reReHeader + '"') else ""} \
      ~{if defined(regionsRegions) then ("--regions " +  '"' + regionsRegions + '"') else ""} \
      ~{if defined(targetsTargets) then ("--targets " +  '"' + targetsTargets + '"') else ""} \
      ~{true="-D" false="" dD}
  >>>
}