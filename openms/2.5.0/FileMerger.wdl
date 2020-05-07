version 1.0

task FileMerger {
  input {
    File inIn
    String inInType
    File outOut
    Boolean annotateAnnotateFileOrigin
    String appendAppendMethod
    Boolean rtRtConcat
    Boolean rtRtConcat
    Boolean rawRaw
    Boolean rawRaw
    Boolean rawRaw
    Boolean rawRaw
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    FileMerger \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(inInType) then ("-in_type " +  '"' + inInType + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-annotate_file_origin" false="" annotateAnnotateFileOrigin} \
      ~{if defined(appendAppendMethod) then ("-append_method " +  '"' + appendAppendMethod + '"') else ""} \
      ~{true="-rt_concat" false="" rtRtConcat} \
      ~{true="-rt_concat" false="" rtRtConcat} \
      ~{true="-raw" false="" rawRaw} \
      ~{true="-raw" false="" rawRaw} \
      ~{true="-raw" false="" rawRaw} \
      ~{true="-raw" false="" rawRaw} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}