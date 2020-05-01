version 1.0

task OpenSwathWorkflow {
  input {
    File inIn
    File trTr
    String trTrType
    File trTrIrt
    File outOutFeatures
    File outOutTsv
    File outOutOsw
    String rtRtExtractionWindow
    String ionIonMobilityWindow
    String mzMzExtractionWindow
    Boolean ppmPpm
    Boolean sonarSonar
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
    Boolean debuggingDebugging
    Boolean libraryLibrary
    Boolean rtRtNormalization
    Boolean scoringScoring
  }
  command <<<
    OpenSwathWorkflow \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(trTr) then ("-tr " +  '"' + trTr + '"') else ""} \
      ~{if defined(trTrType) then ("-tr_type " +  '"' + trTrType + '"') else ""} \
      ~{if defined(trTrIrt) then ("-tr_irt " +  '"' + trTrIrt + '"') else ""} \
      ~{if defined(outOutFeatures) then ("-out_features " +  '"' + outOutFeatures + '"') else ""} \
      ~{if defined(outOutTsv) then ("-out_tsv " +  '"' + outOutTsv + '"') else ""} \
      ~{if defined(outOutOsw) then ("-out_osw " +  '"' + outOutOsw + '"') else ""} \
      ~{if defined(rtRtExtractionWindow) then ("-rt_extraction_window " +  '"' + rtRtExtractionWindow + '"') else ""} \
      ~{if defined(ionIonMobilityWindow) then ("-ion_mobility_window " +  '"' + ionIonMobilityWindow + '"') else ""} \
      ~{if defined(mzMzExtractionWindow) then ("-mz_extraction_window " +  '"' + mzMzExtractionWindow + '"') else ""} \
      ~{true="-ppm" false="" ppmPpm} \
      ~{true="-sonar" false="" sonarSonar} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp} \
      ~{true="- Debugging" false="" debuggingDebugging} \
      ~{true="- Library" false="" libraryLibrary} \
      ~{true="- RTNormalization" false="" rtRtNormalization} \
      ~{true="- Scoring" false="" scoringScoring}
  >>>
}