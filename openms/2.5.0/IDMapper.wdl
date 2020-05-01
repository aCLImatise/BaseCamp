version 1.0

task IDMapper {
  input {
    File idId
    File inIn
    File outOut
    String rtRtTolerance
    String mzMzTolerance
    String mzMzMeasure
    String mzMzReference
    Boolean featureFeature
    Boolean featureFeature
    Boolean consensusConsensus
    Boolean spectraSpectra
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    IDMapper \
      ~{if defined(idId) then ("-id " +  '"' + idId + '"') else ""} \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(rtRtTolerance) then ("-rt_tolerance " +  '"' + rtRtTolerance + '"') else ""} \
      ~{if defined(mzMzTolerance) then ("-mz_tolerance " +  '"' + mzMzTolerance + '"') else ""} \
      ~{if defined(mzMzMeasure) then ("-mz_measure " +  '"' + mzMzMeasure + '"') else ""} \
      ~{if defined(mzMzReference) then ("-mz_reference " +  '"' + mzMzReference + '"') else ""} \
      ~{true="-feature" false="" featureFeature} \
      ~{true="-feature" false="" featureFeature} \
      ~{true="-consensus" false="" consensusConsensus} \
      ~{true="-spectra" false="" spectraSpectra} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}