version 1.0

task ClusterMassTraces {
  input {
    File inIn
    File outOut
    String minMinPearsonCorrelation
    String minMinPeakNr
    String maxMaxLag
    String maxMaxRtApexDifference
    String maxMaxIntensityCutOff
    String addAddPrecursor
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    ClusterMassTraces \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(minMinPearsonCorrelation) then ("-min_pearson_correlation " +  '"' + minMinPearsonCorrelation + '"') else ""} \
      ~{if defined(minMinPeakNr) then ("-min_peak_nr " +  '"' + minMinPeakNr + '"') else ""} \
      ~{if defined(maxMaxLag) then ("-max_lag " +  '"' + maxMaxLag + '"') else ""} \
      ~{if defined(maxMaxRtApexDifference) then ("-max_rt_apex_difference " +  '"' + maxMaxRtApexDifference + '"') else ""} \
      ~{if defined(maxMaxIntensityCutOff) then ("-max_intensity_cutoff " +  '"' + maxMaxIntensityCutOff + '"') else ""} \
      ~{if defined(addAddPrecursor) then ("-add_precursor " +  '"' + addAddPrecursor + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}