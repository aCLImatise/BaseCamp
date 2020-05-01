version 1.0

task SequenceCoverageCalculator {
  input {
    File inInDatabase
    File inInPeptides
    File outOut
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    SequenceCoverageCalculator \
      ~{if defined(inInDatabase) then ("-in_database " +  '"' + inInDatabase + '"') else ""} \
      ~{if defined(inInPeptides) then ("-in_peptides " +  '"' + inInPeptides + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}