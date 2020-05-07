version 1.0

task IDMerger {
  input {
    File inIn
    File outOut
    File addAddTo
    Boolean annotateAnnotateFileOrigin
    Boolean pepPepXmlProtXml
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    IDMerger \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(addAddTo) then ("-add_to " +  '"' + addAddTo + '"') else ""} \
      ~{true="-annotate_file_origin" false="" annotateAnnotateFileOrigin} \
      ~{true="-pepxml_protxml" false="" pepPepXmlProtXml} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}