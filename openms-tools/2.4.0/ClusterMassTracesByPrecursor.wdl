version 1.0

task ClusterMassTracesByPrecursor {
  input {
    File inInMs1
    File inInSwath
    File outOut
    Boolean assignAssignUnassignedToAll
    String minMinPearsonCorrelation
    String maxMaxLag
    String minMinNrIons
    String maxMaxRtApexDifference
    String swathSwathLower
    String swathSwathUpper
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    ClusterMassTracesByPrecursor \
      ~{if defined(inInMs1) then ("-in_ms1 " +  '"' + inInMs1 + '"') else ""} \
      ~{if defined(inInSwath) then ("-in_swath " +  '"' + inInSwath + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-assign_unassigned_to_all" false="" assignAssignUnassignedToAll} \
      ~{if defined(minMinPearsonCorrelation) then ("-min_pearson_correlation " +  '"' + minMinPearsonCorrelation + '"') else ""} \
      ~{if defined(maxMaxLag) then ("-max_lag " +  '"' + maxMaxLag + '"') else ""} \
      ~{if defined(minMinNrIons) then ("-min_nr_ions " +  '"' + minMinNrIons + '"') else ""} \
      ~{if defined(maxMaxRtApexDifference) then ("-max_rt_apex_difference " +  '"' + maxMaxRtApexDifference + '"') else ""} \
      ~{if defined(swathSwathLower) then ("-swath_lower " +  '"' + swathSwathLower + '"') else ""} \
      ~{if defined(swathSwathUpper) then ("-swath_upper " +  '"' + swathSwathUpper + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}