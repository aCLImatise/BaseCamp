version 1.0

task SpecLibSearcher {
  input {
    File inIn
    File libLib
    File outOut
    Boolean precursorPrecursor
    Boolean precursorPrecursor
    Boolean precursorPrecursor
    Boolean fragmentFragment
    String compareCompareFunction
    Boolean filterFilter
    Boolean filterFilter
    Boolean filterFilter
    Boolean filterFilter
    Boolean modificationsModifications
    Boolean modificationsModifications
    Boolean modificationsModifications
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    SpecLibSearcher \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(libLib) then ("-lib " +  '"' + libLib + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-precursor" false="" precursorPrecursor} \
      ~{true="-precursor" false="" precursorPrecursor} \
      ~{true="-precursor" false="" precursorPrecursor} \
      ~{true="-fragment" false="" fragmentFragment} \
      ~{if defined(compareCompareFunction) then ("-compare_function " +  '"' + compareCompareFunction + '"') else ""} \
      ~{true="-filter" false="" filterFilter} \
      ~{true="-filter" false="" filterFilter} \
      ~{true="-filter" false="" filterFilter} \
      ~{true="-filter" false="" filterFilter} \
      ~{true="-modifications" false="" modificationsModifications} \
      ~{true="-modifications" false="" modificationsModifications} \
      ~{true="-modifications" false="" modificationsModifications} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}