version 1.0

task CVInspector {
  input {
    File cvCvFiles
    String cvCvNames
    File mappingMappingFile
    String ignoreIgnoreCv
    File htmlHtml
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    CVInspector \
      ~{if defined(cvCvFiles) then ("-cv_files " +  '"' + cvCvFiles + '"') else ""} \
      ~{if defined(cvCvNames) then ("-cv_names " +  '"' + cvCvNames + '"') else ""} \
      ~{if defined(mappingMappingFile) then ("-mapping_file " +  '"' + mappingMappingFile + '"') else ""} \
      ~{if defined(ignoreIgnoreCv) then ("-ignore_cv " +  '"' + ignoreIgnoreCv + '"') else ""} \
      ~{if defined(htmlHtml) then ("-html " +  '"' + htmlHtml + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}