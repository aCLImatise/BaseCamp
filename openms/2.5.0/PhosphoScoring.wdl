version 1.0

task PhosphoScoring {
  input {
    File inIn
    File idId
    File outOut
    String fragmentFragmentMassTolerance
    String fragmentFragmentMassUnit
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    PhosphoScoring \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(idId) then ("-id " +  '"' + idId + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(fragmentFragmentMassTolerance) then ("-fragment_mass_tolerance " +  '"' + fragmentFragmentMassTolerance + '"') else ""} \
      ~{if defined(fragmentFragmentMassUnit) then ("-fragment_mass_unit " +  '"' + fragmentFragmentMassUnit + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}