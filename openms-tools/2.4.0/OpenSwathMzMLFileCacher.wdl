version 1.0

task OpenSwathMzMLFileCacher {
  input {
    File inIn
    String inInType
    File outOut
    String outOutType
    Boolean convertConvertBack
    String lossyLossyCompression
    String fullFullMeta
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    OpenSwathMzMLFileCacher \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(inInType) then ("-in_type " +  '"' + inInType + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(outOutType) then ("-out_type " +  '"' + outOutType + '"') else ""} \
      ~{true="-convert_back" false="" convertConvertBack} \
      ~{if defined(lossyLossyCompression) then ("-lossy_compression " +  '"' + lossyLossyCompression + '"') else ""} \
      ~{if defined(fullFullMeta) then ("-full_meta " +  '"' + fullFullMeta + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}