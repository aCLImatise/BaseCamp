version 1.0

task OpenSwathWorkflow {
  input {
    File inIn
    File trTr
    String trTrType
    File trTrIrt
    File trTrIrtNonlinear
    File outOutFeatures
    File outOutTsv
    File outOutOsw
    Boolean sonarSonar
    String rtRtExtractionWindow
    String ionIonMobilityWindow
    String mzMzExtractionWindow
    String mzMzExtractionWindowMs1
    String imImExtractionWindowMs1
    Boolean debuggingDebugging
    Boolean debuggingDebugging
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
    Boolean calibrationCalibration
    Boolean libraryLibrary
    Boolean rtRtNormalization
    Boolean scoringScoring
    Boolean httpHttp
  }
  command <<<
    OpenSwathWorkflow \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(trTr) then ("-tr " +  '"' + trTr + '"') else ""} \
      ~{if defined(trTrType) then ("-tr_type " +  '"' + trTrType + '"') else ""} \
      ~{if defined(trTrIrt) then ("-tr_irt " +  '"' + trTrIrt + '"') else ""} \
      ~{if defined(trTrIrtNonlinear) then ("-tr_irt_nonlinear " +  '"' + trTrIrtNonlinear + '"') else ""} \
      ~{if defined(outOutFeatures) then ("-out_features " +  '"' + outOutFeatures + '"') else ""} \
      ~{if defined(outOutTsv) then ("-out_tsv " +  '"' + outOutTsv + '"') else ""} \
      ~{if defined(outOutOsw) then ("-out_osw " +  '"' + outOutOsw + '"') else ""} \
      ~{true="-sonar" false="" sonarSonar} \
      ~{if defined(rtRtExtractionWindow) then ("-rt_extraction_window " +  '"' + rtRtExtractionWindow + '"') else ""} \
      ~{if defined(ionIonMobilityWindow) then ("-ion_mobility_window " +  '"' + ionIonMobilityWindow + '"') else ""} \
      ~{if defined(mzMzExtractionWindow) then ("-mz_extraction_window " +  '"' + mzMzExtractionWindow + '"') else ""} \
      ~{if defined(mzMzExtractionWindowMs1) then ("-mz_extraction_window_ms1 " +  '"' + mzMzExtractionWindowMs1 + '"') else ""} \
      ~{if defined(imImExtractionWindowMs1) then ("-im_extraction_window_ms1 " +  '"' + imImExtractionWindowMs1 + '"') else ""} \
      ~{true="-Debugging" false="" debuggingDebugging} \
      ~{true="-Debugging" false="" debuggingDebugging} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp} \
      ~{true="- Calibration" false="" calibrationCalibration} \
      ~{true="- Library" false="" libraryLibrary} \
      ~{true="- RTNormalization" false="" rtRtNormalization} \
      ~{true="- Scoring" false="" scoringScoring} \
      ~{true="- http" false="" httpHttp}
  >>>
}