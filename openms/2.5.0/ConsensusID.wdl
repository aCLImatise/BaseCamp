version 1.0

task ConsensusID {
  input {
    File inIn
    File outOut
    String rtRtDelta
    String mzMzDelta
    Boolean filterFilter
    Boolean filterFilter
    Boolean filterFilter
    String algorithmAlgorithm
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
    Boolean pepPepIons
    Boolean pepPepMatrix
    Boolean httpHttp
  }
  command <<<
    ConsensusID \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(rtRtDelta) then ("-rt_delta " +  '"' + rtRtDelta + '"') else ""} \
      ~{if defined(mzMzDelta) then ("-mz_delta " +  '"' + mzMzDelta + '"') else ""} \
      ~{true="-filter" false="" filterFilter} \
      ~{true="-filter" false="" filterFilter} \
      ~{true="-filter" false="" filterFilter} \
      ~{if defined(algorithmAlgorithm) then ("-algorithm " +  '"' + algorithmAlgorithm + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp} \
      ~{true="- PEPIons" false="" pepPepIons} \
      ~{true="- PEPMatrix" false="" pepPepMatrix} \
      ~{true="- http" false="" httpHttp}
  >>>
}