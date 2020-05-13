version 1.0

task OpenSwathChromatogramExtractor {
  input {
    File inIn
    File trTr
    File rtRtNorm
    File outOut
    String minMinUpperEdgeDist
    String rtRtWindow
    String ionIonMobilityWindow
    String mzMzWindow
    Boolean ppmPpm
    Boolean isIsSwath
    Boolean extractExtractMs1
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    OpenSwathChromatogramExtractor \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(trTr) then ("-tr " +  '"' + trTr + '"') else ""} \
      ~{if defined(rtRtNorm) then ("-rt_norm " +  '"' + rtRtNorm + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(minMinUpperEdgeDist) then ("-min_upper_edge_dist " +  '"' + minMinUpperEdgeDist + '"') else ""} \
      ~{if defined(rtRtWindow) then ("-rt_window " +  '"' + rtRtWindow + '"') else ""} \
      ~{if defined(ionIonMobilityWindow) then ("-ion_mobility_window " +  '"' + ionIonMobilityWindow + '"') else ""} \
      ~{if defined(mzMzWindow) then ("-mz_window " +  '"' + mzMzWindow + '"') else ""} \
      ~{true="-ppm" false="" ppmPpm} \
      ~{true="-is_swath" false="" isIsSwath} \
      ~{true="-extract_MS1" false="" extractExtractMs1} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}