version 1.0

task PrecursorIonSelector {
  input {
    String inIn
    String outOut
    String nextNextFeat
    String idsIds
    Int numNumPrecursors
    File rawRawData
    Boolean loadLoadPreprocessing
    Boolean storeStorePreprocessing
    Boolean simulationSimulation
    String simSimResults
    String dbDbPath
    String rtRtModel
    String dtDtModel
    String fixedFixedModifications
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
    Boolean algorithmAlgorithm
  }
  command <<<
    PrecursorIonSelector \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(nextNextFeat) then ("-next_feat " +  '"' + nextNextFeat + '"') else ""} \
      ~{if defined(idsIds) then ("-ids " +  '"' + idsIds + '"') else ""} \
      ~{if defined(numNumPrecursors) then ("-num_precursors " +  '"' + numNumPrecursors + '"') else ""} \
      ~{if defined(rawRawData) then ("-raw_data " +  '"' + rawRawData + '"') else ""} \
      ~{true="-load_preprocessing" false="" loadLoadPreprocessing} \
      ~{true="-store_preprocessing" false="" storeStorePreprocessing} \
      ~{true="-simulation" false="" simulationSimulation} \
      ~{if defined(simSimResults) then ("-sim_results " +  '"' + simSimResults + '"') else ""} \
      ~{if defined(dbDbPath) then ("-db_path " +  '"' + dbDbPath + '"') else ""} \
      ~{if defined(rtRtModel) then ("-rt_model " +  '"' + rtRtModel + '"') else ""} \
      ~{if defined(dtDtModel) then ("-dt_model " +  '"' + dtDtModel + '"') else ""} \
      ~{if defined(fixedFixedModifications) then ("-fixed_modifications " +  '"' + fixedFixedModifications + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp} \
      ~{true="- algorithm" false="" algorithmAlgorithm}
  >>>
}