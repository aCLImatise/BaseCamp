version 1.0

task HighResPrecursorMassCorrector {
  input {
    File inIn
    File outOut
    Boolean featureFeature
    Boolean featureFeature
    Boolean featureFeature
    Boolean featureFeature
    Boolean featureFeature
    Boolean featureFeature
    Boolean featureFeature
    Boolean nearestNearestPeak
    Boolean nearestNearestPeak
    Boolean highestHighestIntensityPeak
    Boolean highestHighestIntensityPeak
    File outOutCsv
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    HighResPrecursorMassCorrector \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-feature" false="" featureFeature} \
      ~{true="-feature" false="" featureFeature} \
      ~{true="-feature" false="" featureFeature} \
      ~{true="-feature" false="" featureFeature} \
      ~{true="-feature" false="" featureFeature} \
      ~{true="-feature" false="" featureFeature} \
      ~{true="-feature" false="" featureFeature} \
      ~{true="-nearest_peak" false="" nearestNearestPeak} \
      ~{true="-nearest_peak" false="" nearestNearestPeak} \
      ~{true="-highest_intensity_peak" false="" highestHighestIntensityPeak} \
      ~{true="-highest_intensity_peak" false="" highestHighestIntensityPeak} \
      ~{if defined(outOutCsv) then ("-out_csv " +  '"' + outOutCsv + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}