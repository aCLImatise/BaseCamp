version 1.0

task BaselineFilter {
  input {
    File inIn
    File outOut
    Int strucStrucElemLength
    String strucStrucElemUnit
    String methodMethod
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    BaselineFilter \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(strucStrucElemLength) then ("-struc_elem_length " +  '"' + strucStrucElemLength + '"') else ""} \
      ~{if defined(strucStrucElemUnit) then ("-struc_elem_unit " +  '"' + strucStrucElemUnit + '"') else ""} \
      ~{if defined(methodMethod) then ("-method " +  '"' + methodMethod + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}