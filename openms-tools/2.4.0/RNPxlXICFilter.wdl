version 1.0

task RNPxlXICFilter {
  input {
    File controlControl
    File treatmentTreatment
    Boolean foldFoldChange
    Boolean rtRtToL
    Boolean mzMzToL
    File outOut
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    RNPxlXICFilter \
      ~{if defined(controlControl) then ("-control " +  '"' + controlControl + '"') else ""} \
      ~{if defined(treatmentTreatment) then ("-treatment " +  '"' + treatmentTreatment + '"') else ""} \
      ~{true="-fold_change" false="" foldFoldChange} \
      ~{true="-rt_tol" false="" rtRtToL} \
      ~{true="-mz_tol" false="" mzMzToL} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}