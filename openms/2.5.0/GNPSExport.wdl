version 1.0

task GNPSExport {
  input {
    File inInCm
    File inInMzmL
    File outOut
    String outputOutputType
    String precursorPrecursorMzTolerance
    String precursorPrecursorRtTolerance
    Boolean mergedMergedSpectra
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    GNPSExport \
      ~{if defined(inInCm) then ("-in_cm " +  '"' + inInCm + '"') else ""} \
      ~{if defined(inInMzmL) then ("-in_mzml " +  '"' + inInMzmL + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(outputOutputType) then ("-output_type " +  '"' + outputOutputType + '"') else ""} \
      ~{if defined(precursorPrecursorMzTolerance) then ("-precursor_mz_tolerance " +  '"' + precursorPrecursorMzTolerance + '"') else ""} \
      ~{if defined(precursorPrecursorRtTolerance) then ("-precursor_rt_tolerance " +  '"' + precursorPrecursorRtTolerance + '"') else ""} \
      ~{true="-merged_spectra" false="" mergedMergedSpectra} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}