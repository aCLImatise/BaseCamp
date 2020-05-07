version 1.0

task InspectAdapter {
  input {
    File inIn
    File outOut
    Boolean inspectInspectIn
    Boolean inspectInspectOut
    String inspectInspectDirectory
    String tempTempDataDirectory
    File dbsDbs
    File trieTrieDbs
    File newNewDb
    String instrumentInstrument
    String precursorPrecursorMassTolerance
    String peakPeakMassTolerance
    Boolean listListModifications
    String modificationsModifications
    Boolean useUseMonoIsotopicModMass
    File modificationsModificationsXmlFile
    String cleavageCleavage
    File inspectInspectOutput
    File inspectInspectInput
    Boolean multiMultiCharge
    String maxMaxModificationsPp
    String tagTagCount
    Boolean noNoTmpDbs
    String pPValue
    Boolean blindBlind
    Boolean blindBlind
    Boolean blindBlind
    Boolean blindBlind
    Boolean blindBlind
    String contactContactName
    String contactContactInstitution
    String contactContactInfo
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    InspectAdapter \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-inspect_in" false="" inspectInspectIn} \
      ~{true="-inspect_out" false="" inspectInspectOut} \
      ~{if defined(inspectInspectDirectory) then ("-inspect_directory " +  '"' + inspectInspectDirectory + '"') else ""} \
      ~{if defined(tempTempDataDirectory) then ("-temp_data_directory " +  '"' + tempTempDataDirectory + '"') else ""} \
      ~{if defined(dbsDbs) then ("-dbs " +  '"' + dbsDbs + '"') else ""} \
      ~{if defined(trieTrieDbs) then ("-trie_dbs " +  '"' + trieTrieDbs + '"') else ""} \
      ~{if defined(newNewDb) then ("-new_db " +  '"' + newNewDb + '"') else ""} \
      ~{if defined(instrumentInstrument) then ("-instrument " +  '"' + instrumentInstrument + '"') else ""} \
      ~{if defined(precursorPrecursorMassTolerance) then ("-precursor_mass_tolerance " +  '"' + precursorPrecursorMassTolerance + '"') else ""} \
      ~{if defined(peakPeakMassTolerance) then ("-peak_mass_tolerance " +  '"' + peakPeakMassTolerance + '"') else ""} \
      ~{true="-list_modifications" false="" listListModifications} \
      ~{if defined(modificationsModifications) then ("-modifications " +  '"' + modificationsModifications + '"') else ""} \
      ~{true="-use_monoisotopic_mod_mass" false="" useUseMonoIsotopicModMass} \
      ~{if defined(modificationsModificationsXmlFile) then ("-modifications_xml_file " +  '"' + modificationsModificationsXmlFile + '"') else ""} \
      ~{if defined(cleavageCleavage) then ("-cleavage " +  '"' + cleavageCleavage + '"') else ""} \
      ~{if defined(inspectInspectOutput) then ("-inspect_output " +  '"' + inspectInspectOutput + '"') else ""} \
      ~{if defined(inspectInspectInput) then ("-inspect_input " +  '"' + inspectInspectInput + '"') else ""} \
      ~{true="-multicharge" false="" multiMultiCharge} \
      ~{if defined(maxMaxModificationsPp) then ("-max_modifications_pp " +  '"' + maxMaxModificationsPp + '"') else ""} \
      ~{if defined(tagTagCount) then ("-tag_count " +  '"' + tagTagCount + '"') else ""} \
      ~{true="-no_tmp_dbs" false="" noNoTmpDbs} \
      ~{if defined(pPValue) then ("-p_value " +  '"' + pPValue + '"') else ""} \
      ~{true="-blind" false="" blindBlind} \
      ~{true="-blind" false="" blindBlind} \
      ~{true="-blind" false="" blindBlind} \
      ~{true="-blind" false="" blindBlind} \
      ~{true="-blind" false="" blindBlind} \
      ~{if defined(contactContactName) then ("-contact_name " +  '"' + contactContactName + '"') else ""} \
      ~{if defined(contactContactInstitution) then ("-contact_institution " +  '"' + contactContactInstitution + '"') else ""} \
      ~{if defined(contactContactInfo) then ("-contact_info " +  '"' + contactContactInfo + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}