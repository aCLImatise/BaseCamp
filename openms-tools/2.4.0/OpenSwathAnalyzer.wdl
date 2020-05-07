version 1.0

task OpenSwathAnalyzer {
  input {
    File inIn
    File trTr
    File rtRtNorm
    File outOut
    Boolean noNoStrict
    File swathSwathFiles
    String minMinUpperEdgeDist
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
    Boolean algorithmAlgorithm
  }
  command <<<
    OpenSwathAnalyzer \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(trTr) then ("-tr " +  '"' + trTr + '"') else ""} \
      ~{if defined(rtRtNorm) then ("-rt_norm " +  '"' + rtRtNorm + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-no-strict" false="" noNoStrict} \
      ~{if defined(swathSwathFiles) then ("-swath_files " +  '"' + swathSwathFiles + '"') else ""} \
      ~{if defined(minMinUpperEdgeDist) then ("-min_upper_edge_dist " +  '"' + minMinUpperEdgeDist + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp} \
      ~{true="- algorithm" false="" algorithmAlgorithm}
  >>>
}