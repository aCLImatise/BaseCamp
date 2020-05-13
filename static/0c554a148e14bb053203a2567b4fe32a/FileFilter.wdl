version 1.0

task FileFilter {
  input {
    File inIn
    String inInType
    File outOut
    String outOutType
    Boolean rtRt
    Boolean mzMz
    Boolean intInt
    Boolean sortSort
    Boolean peakPeakOptions
    Boolean peakPeakOptions
    Boolean peakPeakOptions
    Boolean peakPeakOptions
    Boolean peakPeakOptions
    Boolean peakPeakOptions
    Boolean peakPeakOptions
    Boolean peakPeakOptions
    Boolean peakPeakOptions
    Boolean peakPeakOptions
    Boolean peakPeakOptions
    Boolean peakPeakOptions
    Boolean peakPeakOptions
    Boolean peakPeakOptions
    Boolean peakPeakOptions
    Boolean peakPeakOptions
    Boolean spectraSpectra
    Boolean spectraSpectra
    Boolean spectraSpectra
    Boolean spectraSpectra
    Boolean spectraSpectra
    Boolean spectraSpectra
    Boolean spectraSpectra
    Boolean spectraSpectra
    Boolean spectraSpectra
    Boolean spectraSpectra
    Boolean spectraSpectra
    Boolean spectraSpectra
    Boolean spectraSpectra
    Boolean spectraSpectra
    Boolean spectraSpectra
    Boolean spectraSpectra
    Boolean spectraSpectra
    Boolean featureFeature
    Boolean consensusConsensus
    Boolean consensusConsensus
    Boolean consensusConsensus
    Boolean consensusConsensus
    Boolean consensusConsensus
    Boolean consensusConsensus
    Boolean consensusConsensus
    Boolean consensusConsensus
    Boolean fFAndC
    Boolean fFAndC
    Boolean fFAndC
    Boolean idId
    Boolean idId
    Boolean idId
    Boolean idId
    Boolean idId
    Boolean idId
    Boolean idId
    Boolean idId
    Boolean idId
    Boolean idId
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
    Boolean algorithmAlgorithm
    Boolean httpHttp
  }
  command <<<
    FileFilter \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(inInType) then ("-in_type " +  '"' + inInType + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(outOutType) then ("-out_type " +  '"' + outOutType + '"') else ""} \
      ~{true="-rt" false="" rtRt} \
      ~{true="-mz" false="" mzMz} \
      ~{true="-int" false="" intInt} \
      ~{true="-sort" false="" sortSort} \
      ~{true="-peak_options" false="" peakPeakOptions} \
      ~{true="-peak_options" false="" peakPeakOptions} \
      ~{true="-peak_options" false="" peakPeakOptions} \
      ~{true="-peak_options" false="" peakPeakOptions} \
      ~{true="-peak_options" false="" peakPeakOptions} \
      ~{true="-peak_options" false="" peakPeakOptions} \
      ~{true="-peak_options" false="" peakPeakOptions} \
      ~{true="-peak_options" false="" peakPeakOptions} \
      ~{true="-peak_options" false="" peakPeakOptions} \
      ~{true="-peak_options" false="" peakPeakOptions} \
      ~{true="-peak_options" false="" peakPeakOptions} \
      ~{true="-peak_options" false="" peakPeakOptions} \
      ~{true="-peak_options" false="" peakPeakOptions} \
      ~{true="-peak_options" false="" peakPeakOptions} \
      ~{true="-peak_options" false="" peakPeakOptions} \
      ~{true="-peak_options" false="" peakPeakOptions} \
      ~{true="-spectra" false="" spectraSpectra} \
      ~{true="-spectra" false="" spectraSpectra} \
      ~{true="-spectra" false="" spectraSpectra} \
      ~{true="-spectra" false="" spectraSpectra} \
      ~{true="-spectra" false="" spectraSpectra} \
      ~{true="-spectra" false="" spectraSpectra} \
      ~{true="-spectra" false="" spectraSpectra} \
      ~{true="-spectra" false="" spectraSpectra} \
      ~{true="-spectra" false="" spectraSpectra} \
      ~{true="-spectra" false="" spectraSpectra} \
      ~{true="-spectra" false="" spectraSpectra} \
      ~{true="-spectra" false="" spectraSpectra} \
      ~{true="-spectra" false="" spectraSpectra} \
      ~{true="-spectra" false="" spectraSpectra} \
      ~{true="-spectra" false="" spectraSpectra} \
      ~{true="-spectra" false="" spectraSpectra} \
      ~{true="-spectra" false="" spectraSpectra} \
      ~{true="-feature" false="" featureFeature} \
      ~{true="-consensus" false="" consensusConsensus} \
      ~{true="-consensus" false="" consensusConsensus} \
      ~{true="-consensus" false="" consensusConsensus} \
      ~{true="-consensus" false="" consensusConsensus} \
      ~{true="-consensus" false="" consensusConsensus} \
      ~{true="-consensus" false="" consensusConsensus} \
      ~{true="-consensus" false="" consensusConsensus} \
      ~{true="-consensus" false="" consensusConsensus} \
      ~{true="-f_and_c" false="" fFAndC} \
      ~{true="-f_and_c" false="" fFAndC} \
      ~{true="-f_and_c" false="" fFAndC} \
      ~{true="-id" false="" idId} \
      ~{true="-id" false="" idId} \
      ~{true="-id" false="" idId} \
      ~{true="-id" false="" idId} \
      ~{true="-id" false="" idId} \
      ~{true="-id" false="" idId} \
      ~{true="-id" false="" idId} \
      ~{true="-id" false="" idId} \
      ~{true="-id" false="" idId} \
      ~{true="-id" false="" idId} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp} \
      ~{true="- algorithm" false="" algorithmAlgorithm} \
      ~{true="- http" false="" httpHttp}
  >>>
}