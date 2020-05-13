version 1.0

task FuzzyDiff {
  input {
    File in1In1
    File in2In2
    String ratioRatio
    String absAbsDiff
    Int verboseVerbose
    Int tabTabWidth
    Int firstFirstColumn
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    FuzzyDiff \
      ~{if defined(in1In1) then ("-in1 " +  '"' + in1In1 + '"') else ""} \
      ~{if defined(in2In2) then ("-in2 " +  '"' + in2In2 + '"') else ""} \
      ~{if defined(ratioRatio) then ("-ratio " +  '"' + ratioRatio + '"') else ""} \
      ~{if defined(absAbsDiff) then ("-absdiff " +  '"' + absAbsDiff + '"') else ""} \
      ~{if defined(verboseVerbose) then ("-verbose " +  '"' + verboseVerbose + '"') else ""} \
      ~{if defined(tabTabWidth) then ("-tab_width " +  '"' + tabTabWidth + '"') else ""} \
      ~{if defined(firstFirstColumn) then ("-first_column " +  '"' + firstFirstColumn + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}