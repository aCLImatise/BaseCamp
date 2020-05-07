version 1.0

task TepidDiscover {
  input {
    Boolean keepKeep
    Boolean deletionsDeletions
    Boolean insertionsInsertions
    Boolean strictStrict
    String maskMask
    String discordantDiscordant
    String procProc
    String nameName
    String concConc
    String splitSplit
    String teTe
    Boolean seSe
  }
  command <<<
    tepid-discover \
      ~{true="--keep" false="" keepKeep} \
      ~{true="--deletions" false="" deletionsDeletions} \
      ~{true="--insertions" false="" insertionsInsertions} \
      ~{true="--strict" false="" strictStrict} \
      ~{if defined(maskMask) then ("--mask " +  '"' + maskMask + '"') else ""} \
      ~{if defined(discordantDiscordant) then ("--discordant " +  '"' + discordantDiscordant + '"') else ""} \
      ~{if defined(procProc) then ("--proc " +  '"' + procProc + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(concConc) then ("--conc " +  '"' + concConc + '"') else ""} \
      ~{if defined(splitSplit) then ("--split " +  '"' + splitSplit + '"') else ""} \
      ~{if defined(teTe) then ("--te " +  '"' + teTe + '"') else ""} \
      ~{true="--se" false="" seSe}
  >>>
}