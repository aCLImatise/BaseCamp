version 1.0

task MascotAdapterOnline {
  input {
    File inIn
    File outOut
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
    Boolean mascotMascotParameters
    Boolean mascotMascotServer
    Boolean httpHttp
  }
  command <<<
    MascotAdapterOnline \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp} \
      ~{true="- Mascot_parameters" false="" mascotMascotParameters} \
      ~{true="- Mascot_server" false="" mascotMascotServer} \
      ~{true="- http" false="" httpHttp}
  >>>
}