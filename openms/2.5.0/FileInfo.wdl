version 1.0

task FileInfo {
  input {
    File inIn
    String inInType
    File outOut
    Boolean mM
    Boolean pP
    Boolean sS
    Boolean dD
    Boolean cC
    Boolean vV
    Boolean iI
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    FileInfo \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(inInType) then ("-in_type " +  '"' + inInType + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-m" false="" mM} \
      ~{true="-p" false="" pP} \
      ~{true="-s" false="" sS} \
      ~{true="-d" false="" dD} \
      ~{true="-c" false="" cC} \
      ~{true="-v" false="" vV} \
      ~{true="-i" false="" iI} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}