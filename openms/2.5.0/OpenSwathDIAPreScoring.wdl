version 1.0

task OpenSwathDIAPreScoring {
  input {
    File trTr
    File outOut
    File swathSwathFiles
    String minMinUpperEdgeDist
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    OpenSwathDIAPreScoring \
      ~{if defined(trTr) then ("-tr " +  '"' + trTr + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(swathSwathFiles) then ("-swath_files " +  '"' + swathSwathFiles + '"') else ""} \
      ~{if defined(minMinUpperEdgeDist) then ("-min_upper_edge_dist " +  '"' + minMinUpperEdgeDist + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}