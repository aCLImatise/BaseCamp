version 1.0

task NucleicAcidSearchEngine {
  input {
    File inIn
    File databaseDatabase
    File outOut
    File idIdOut
    File lfLfQOut
    Boolean precursorPrecursor
    Boolean precursorPrecursor
    Boolean precursorPrecursor
    Boolean precursorPrecursor
    Boolean precursorPrecursor
    Boolean precursorPrecursor
    Boolean precursorPrecursor
    Boolean precursorPrecursor
    Boolean precursorPrecursor
    Boolean fragmentFragment
    Boolean fragmentFragment
    Boolean fragmentFragment
    Boolean modificationsModifications
    Boolean modificationsModifications
    Boolean modificationsModifications
    Boolean oligoOligo
    Boolean oligoOligo
    Boolean oligoOligo
    Boolean oligoOligo
    Boolean fdrFdr
    Boolean fdrFdr
    Boolean fdrFdr
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    NucleicAcidSearchEngine \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(databaseDatabase) then ("-database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(idIdOut) then ("-id_out " +  '"' + idIdOut + '"') else ""} \
      ~{if defined(lfLfQOut) then ("-lfq_out " +  '"' + lfLfQOut + '"') else ""} \
      ~{true="-precursor" false="" precursorPrecursor} \
      ~{true="-precursor" false="" precursorPrecursor} \
      ~{true="-precursor" false="" precursorPrecursor} \
      ~{true="-precursor" false="" precursorPrecursor} \
      ~{true="-precursor" false="" precursorPrecursor} \
      ~{true="-precursor" false="" precursorPrecursor} \
      ~{true="-precursor" false="" precursorPrecursor} \
      ~{true="-precursor" false="" precursorPrecursor} \
      ~{true="-precursor" false="" precursorPrecursor} \
      ~{true="-fragment" false="" fragmentFragment} \
      ~{true="-fragment" false="" fragmentFragment} \
      ~{true="-fragment" false="" fragmentFragment} \
      ~{true="-modifications" false="" modificationsModifications} \
      ~{true="-modifications" false="" modificationsModifications} \
      ~{true="-modifications" false="" modificationsModifications} \
      ~{true="-oligo" false="" oligoOligo} \
      ~{true="-oligo" false="" oligoOligo} \
      ~{true="-oligo" false="" oligoOligo} \
      ~{true="-oligo" false="" oligoOligo} \
      ~{true="-fdr" false="" fdrFdr} \
      ~{true="-fdr" false="" fdrFdr} \
      ~{true="-fdr" false="" fdrFdr} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}