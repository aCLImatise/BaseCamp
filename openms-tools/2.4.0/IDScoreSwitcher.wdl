version 1.0

task IDScoreSwitcher {
  input {
    File inIn
    File outOut
    String newNewScore
    String newNewScoreOrientation
    String newNewScoreType
    String oldOldScore
    Boolean proteinsProteins
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    IDScoreSwitcher \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(newNewScore) then ("-new_score " +  '"' + newNewScore + '"') else ""} \
      ~{if defined(newNewScoreOrientation) then ("-new_score_orientation " +  '"' + newNewScoreOrientation + '"') else ""} \
      ~{if defined(newNewScoreType) then ("-new_score_type " +  '"' + newNewScoreType + '"') else ""} \
      ~{if defined(oldOldScore) then ("-old_score " +  '"' + oldOldScore + '"') else ""} \
      ~{true="-proteins" false="" proteinsProteins} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}