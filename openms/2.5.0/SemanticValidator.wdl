version 1.0

task SemanticValidator {
  input {
    File inIn
    File mappingMappingFile
    File cvCv
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    SemanticValidator \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(mappingMappingFile) then ("-mapping_file " +  '"' + mappingMappingFile + '"') else ""} \
      ~{if defined(cvCv) then ("-cv " +  '"' + cvCv + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}