version 1.0

task IDExtractor {
  input {
    File inIn
    File outOut
    Int numberNumberOfPeptides
    Int numberNumberOfRandInVOkAtions
    Boolean bestBestHits
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    IDExtractor \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(numberNumberOfPeptides) then ("-number_of_peptides " +  '"' + numberNumberOfPeptides + '"') else ""} \
      ~{if defined(numberNumberOfRandInVOkAtions) then ("-number_of_rand_invokations " +  '"' + numberNumberOfRandInVOkAtions + '"') else ""} \
      ~{true="-best_hits" false="" bestBestHits} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}