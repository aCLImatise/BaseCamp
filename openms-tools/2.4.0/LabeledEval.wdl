version 1.0

task LabeledEval {
  input {
    File inIn
    File truthTruth
    String rtRtToL
    String mzMzToL
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    LabeledEval \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(truthTruth) then ("-truth " +  '"' + truthTruth + '"') else ""} \
      ~{if defined(rtRtToL) then ("-rt_tol " +  '"' + rtRtToL + '"') else ""} \
      ~{if defined(mzMzToL) then ("-mz_tol " +  '"' + mzMzToL + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}