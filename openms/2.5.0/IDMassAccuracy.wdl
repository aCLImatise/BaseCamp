version 1.0

task IDMassAccuracy {
  input {
    File inIn
    File idIdIn
    File outOutPrecursor
    Boolean precursorPrecursorErrorPpm
    File outOutFragment
    Boolean fragmentFragmentErrorPpm
    String fragmentFragmentMassTolerance
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    IDMassAccuracy \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(idIdIn) then ("-id_in " +  '"' + idIdIn + '"') else ""} \
      ~{if defined(outOutPrecursor) then ("-out_precursor " +  '"' + outOutPrecursor + '"') else ""} \
      ~{true="-precursor_error_ppm" false="" precursorPrecursorErrorPpm} \
      ~{if defined(outOutFragment) then ("-out_fragment " +  '"' + outOutFragment + '"') else ""} \
      ~{true="-fragment_error_ppm" false="" fragmentFragmentErrorPpm} \
      ~{if defined(fragmentFragmentMassTolerance) then ("-fragment_mass_tolerance " +  '"' + fragmentFragmentMassTolerance + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}