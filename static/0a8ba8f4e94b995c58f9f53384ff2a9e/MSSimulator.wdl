version 1.0

task MSSimulator {
  input {
    File inIn
    File outOut
    File outOutPm
    File outOutFm
    File outOutCm
    File outOutLcm
    File outOutCntM
    File outOutId
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
    Boolean algorithmAlgorithm
  }
  command <<<
    MSSimulator \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(outOutPm) then ("-out_pm " +  '"' + outOutPm + '"') else ""} \
      ~{if defined(outOutFm) then ("-out_fm " +  '"' + outOutFm + '"') else ""} \
      ~{if defined(outOutCm) then ("-out_cm " +  '"' + outOutCm + '"') else ""} \
      ~{if defined(outOutLcm) then ("-out_lcm " +  '"' + outOutLcm + '"') else ""} \
      ~{if defined(outOutCntM) then ("-out_cntm " +  '"' + outOutCntM + '"') else ""} \
      ~{if defined(outOutId) then ("-out_id " +  '"' + outOutId + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp} \
      ~{true="- algorithm" false="" algorithmAlgorithm}
  >>>
}