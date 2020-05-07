version 1.0

task FFEval {
  input {
    File inIn
    File truthTruth
    String rtRtToL
    String rtRtToLAbs
    String mzMzToL
    File outOut
    File abortAbortReasons
    File outOutRoc
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    FFEval \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(truthTruth) then ("-truth " +  '"' + truthTruth + '"') else ""} \
      ~{if defined(rtRtToL) then ("-rt_tol " +  '"' + rtRtToL + '"') else ""} \
      ~{if defined(rtRtToLAbs) then ("-rt_tol_abs " +  '"' + rtRtToLAbs + '"') else ""} \
      ~{if defined(mzMzToL) then ("-mz_tol " +  '"' + mzMzToL + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(abortAbortReasons) then ("-abort_reasons " +  '"' + abortAbortReasons + '"') else ""} \
      ~{if defined(outOutRoc) then ("-out_roc " +  '"' + outOutRoc + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}