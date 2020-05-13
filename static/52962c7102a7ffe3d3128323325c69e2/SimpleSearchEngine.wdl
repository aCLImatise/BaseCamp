version 1.0

task SimpleSearchEngine {
  input {
    File inIn
    File databaseDatabase
    File outOut
    Boolean precursorPrecursor
    Boolean precursorPrecursor
    Boolean precursorPrecursor
    Boolean fragmentFragment
    Boolean fragmentFragment
    Boolean modificationsModifications
    Boolean modificationsModifications
    Boolean modificationsModifications
    String enzymeEnzyme
    Boolean peptidePeptide
    Boolean peptidePeptide
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    SimpleSearchEngine \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(databaseDatabase) then ("-database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-precursor" false="" precursorPrecursor} \
      ~{true="-precursor" false="" precursorPrecursor} \
      ~{true="-precursor" false="" precursorPrecursor} \
      ~{true="-fragment" false="" fragmentFragment} \
      ~{true="-fragment" false="" fragmentFragment} \
      ~{true="-modifications" false="" modificationsModifications} \
      ~{true="-modifications" false="" modificationsModifications} \
      ~{true="-modifications" false="" modificationsModifications} \
      ~{if defined(enzymeEnzyme) then ("-enzyme " +  '"' + enzymeEnzyme + '"') else ""} \
      ~{true="-peptide" false="" peptidePeptide} \
      ~{true="-peptide" false="" peptidePeptide} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}