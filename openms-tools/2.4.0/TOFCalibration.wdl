version 1.0

task TOFCalibration {
  input {
    File inIn
    File outOut
    File extExtCalibRants
    File refRefMasses
    File tofTofConst
    Boolean peakPeakData
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
    Boolean algorithmAlgorithm
  }
  command <<<
    TOFCalibration \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(extExtCalibRants) then ("-ext_calibrants " +  '"' + extExtCalibRants + '"') else ""} \
      ~{if defined(refRefMasses) then ("-ref_masses " +  '"' + refRefMasses + '"') else ""} \
      ~{if defined(tofTofConst) then ("-tof_const " +  '"' + tofTofConst + '"') else ""} \
      ~{true="-peak_data" false="" peakPeakData} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp} \
      ~{true="- algorithm" false="" algorithmAlgorithm}
  >>>
}