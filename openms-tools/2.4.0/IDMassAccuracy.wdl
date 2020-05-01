version 1.0

task IDMassAccuracy {
  input {
    File inIn
    File idIdIn
    File precursorPrecursorOut
    String precursorPrecursorColumns
    Boolean precursorPrecursorErrorPpm
    File fragmentFragmentOut
    String fragmentFragmentColumns
    Boolean fragmentFragmentErrorPpm
    String fragmentFragmentMassTolerance
    String separatorSeparator
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    IDMassAccuracy \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(idIdIn) then ("-id_in " +  '"' + idIdIn + '"') else ""} \
      ~{if defined(precursorPrecursorOut) then ("-precursor_out " +  '"' + precursorPrecursorOut + '"') else ""} \
      ~{if defined(precursorPrecursorColumns) then ("-precursor_columns " +  '"' + precursorPrecursorColumns + '"') else ""} \
      ~{true="-precursor_error_ppm" false="" precursorPrecursorErrorPpm} \
      ~{if defined(fragmentFragmentOut) then ("-fragment_out " +  '"' + fragmentFragmentOut + '"') else ""} \
      ~{if defined(fragmentFragmentColumns) then ("-fragment_columns " +  '"' + fragmentFragmentColumns + '"') else ""} \
      ~{true="-fragment_error_ppm" false="" fragmentFragmentErrorPpm} \
      ~{if defined(fragmentFragmentMassTolerance) then ("-fragment_mass_tolerance " +  '"' + fragmentFragmentMassTolerance + '"') else ""} \
      ~{if defined(separatorSeparator) then ("-separator " +  '"' + separatorSeparator + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}