version 1.0

task EICExtractor {
  input {
    File inIn
    File inInHeader
    File posPos
    Boolean rtRtToL
    Boolean mzMzToL
    Boolean rtRtCollect
    Boolean autoAutoRt
    File outOut
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    EICExtractor \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(inInHeader) then ("-in_header " +  '"' + inInHeader + '"') else ""} \
      ~{if defined(posPos) then ("-pos " +  '"' + posPos + '"') else ""} \
      ~{true="-rt_tol" false="" rtRtToL} \
      ~{true="-mz_tol" false="" mzMzToL} \
      ~{true="-rt_collect" false="" rtRtCollect} \
      ~{true="-auto_rt" false="" autoAutoRt} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}