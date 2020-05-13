version 1.0

task RgtHintDifferential {
  input {
    String organismOrganism
    File mMPbsFiles
    File readsReadsFiles
    String conditionsConditions
    String colorsColors
    Int windowWindowSize
    Float fdrFdr
    Boolean bcBc
    Int ncNc
    File outputOutputLocation
    String outputOutputPrefix
    Boolean standardizeStandardize
    Boolean outputOutputProfiles
  }
  command <<<
    rgt-hint differential \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(mMPbsFiles) then ("--mpbs-files " +  '"' + mMPbsFiles + '"') else ""} \
      ~{if defined(readsReadsFiles) then ("--reads-files " +  '"' + readsReadsFiles + '"') else ""} \
      ~{if defined(conditionsConditions) then ("--conditions " +  '"' + conditionsConditions + '"') else ""} \
      ~{if defined(colorsColors) then ("--colors " +  '"' + colorsColors + '"') else ""} \
      ~{if defined(windowWindowSize) then ("--window-size " +  '"' + windowWindowSize + '"') else ""} \
      ~{if defined(fdrFdr) then ("--fdr " +  '"' + fdrFdr + '"') else ""} \
      ~{true="--bc" false="" bcBc} \
      ~{if defined(ncNc) then ("--nc " +  '"' + ncNc + '"') else ""} \
      ~{if defined(outputOutputLocation) then ("--output-location " +  '"' + outputOutputLocation + '"') else ""} \
      ~{if defined(outputOutputPrefix) then ("--output-prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{true="--standardize" false="" standardizeStandardize} \
      ~{true="--output-profiles" false="" outputOutputProfiles}
  >>>
}