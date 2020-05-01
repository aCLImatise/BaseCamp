version 1.0

task HicQuickQC {
  input {
    String samSamFiles
    Directory qcQcFolder
    String restrictionRestrictionSequence
    String danglingDanglingSequence
    String linesLines
  }
  command <<<
    hicQuickQC \
      ~{if defined(samSamFiles) then ("--samFiles " +  '"' + samSamFiles + '"') else ""} \
      ~{if defined(qcQcFolder) then ("--QCfolder " +  '"' + qcQcFolder + '"') else ""} \
      ~{if defined(restrictionRestrictionSequence) then ("--restrictionSequence " +  '"' + restrictionRestrictionSequence + '"') else ""} \
      ~{if defined(danglingDanglingSequence) then ("--danglingSequence " +  '"' + danglingDanglingSequence + '"') else ""} \
      ~{if defined(linesLines) then ("--lines " +  '"' + linesLines + '"') else ""}
  >>>
}