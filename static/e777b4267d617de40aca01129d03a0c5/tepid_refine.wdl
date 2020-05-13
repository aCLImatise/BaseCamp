version 1.0

task TepidRefine {
  input {
    Boolean keepKeep
    String insertionsInsertions
    String deletionsDeletions
    String procProc
    String teTe
    String nameName
    String concConc
    String splitSplit
    String allAllSamples
  }
  command <<<
    tepid-refine \
      ~{true="--keep" false="" keepKeep} \
      ~{if defined(insertionsInsertions) then ("--insertions " +  '"' + insertionsInsertions + '"') else ""} \
      ~{if defined(deletionsDeletions) then ("--deletions " +  '"' + deletionsDeletions + '"') else ""} \
      ~{if defined(procProc) then ("--proc " +  '"' + procProc + '"') else ""} \
      ~{if defined(teTe) then ("--te " +  '"' + teTe + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(concConc) then ("--conc " +  '"' + concConc + '"') else ""} \
      ~{if defined(splitSplit) then ("--split " +  '"' + splitSplit + '"') else ""} \
      ~{if defined(allAllSamples) then ("--all_samples " +  '"' + allAllSamples + '"') else ""}
  >>>
}