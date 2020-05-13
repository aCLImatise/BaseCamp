version 1.0

task RNPxlSearch {
  input {
    File inIn
    File databaseDatabase
    File outOut
    File outOutTsv
    Boolean precursorPrecursor
    Boolean precursorPrecursor
    Boolean precursorPrecursor
    Boolean precursorPrecursor
    Boolean precursorPrecursor
    Boolean fragmentFragment
    Boolean fragmentFragment
    Boolean modificationsModifications
    Boolean modificationsModifications
    Boolean modificationsModifications
    Boolean peptidePeptide
    Boolean peptidePeptide
    Boolean rnpRnpXl
    Boolean rnpRnpXl
    Boolean rnpRnpXl
    Boolean rnpRnpXl
    Boolean rnpRnpXl
    Boolean rnpRnpXl
    Boolean rnpRnpXl
    Boolean rnpRnpXl
    Boolean rnpRnpXl
    Boolean rnpRnpXl
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    RNPxlSearch \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(databaseDatabase) then ("-database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(outOutTsv) then ("-out_tsv " +  '"' + outOutTsv + '"') else ""} \
      ~{true="-precursor" false="" precursorPrecursor} \
      ~{true="-precursor" false="" precursorPrecursor} \
      ~{true="-precursor" false="" precursorPrecursor} \
      ~{true="-precursor" false="" precursorPrecursor} \
      ~{true="-precursor" false="" precursorPrecursor} \
      ~{true="-fragment" false="" fragmentFragment} \
      ~{true="-fragment" false="" fragmentFragment} \
      ~{true="-modifications" false="" modificationsModifications} \
      ~{true="-modifications" false="" modificationsModifications} \
      ~{true="-modifications" false="" modificationsModifications} \
      ~{true="-peptide" false="" peptidePeptide} \
      ~{true="-peptide" false="" peptidePeptide} \
      ~{true="-RNPxl" false="" rnpRnpXl} \
      ~{true="-RNPxl" false="" rnpRnpXl} \
      ~{true="-RNPxl" false="" rnpRnpXl} \
      ~{true="-RNPxl" false="" rnpRnpXl} \
      ~{true="-RNPxl" false="" rnpRnpXl} \
      ~{true="-RNPxl" false="" rnpRnpXl} \
      ~{true="-RNPxl" false="" rnpRnpXl} \
      ~{true="-RNPxl" false="" rnpRnpXl} \
      ~{true="-RNPxl" false="" rnpRnpXl} \
      ~{true="-RNPxl" false="" rnpRnpXl} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}