version 1.0

task OpenSwathDecoyGenerator {
  input {
    File inIn
    String inInType
    File outOut
    String outOutType
    String methodMethod
    String decoyDecoyTag
    Boolean switchSwitchKr
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    OpenSwathDecoyGenerator \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(inInType) then ("-in_type " +  '"' + inInType + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(outOutType) then ("-out_type " +  '"' + outOutType + '"') else ""} \
      ~{if defined(methodMethod) then ("-method " +  '"' + methodMethod + '"') else ""} \
      ~{if defined(decoyDecoyTag) then ("-decoy_tag " +  '"' + decoyDecoyTag + '"') else ""} \
      ~{true="-switchKR" false="" switchSwitchKr} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}