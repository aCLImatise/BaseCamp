version 1.0

task OpenPepXL {
  input {
    File inIn
    File consensusConsensus
    File databaseDatabase
    String decoyDecoyString
    String decoyDecoyPrefix
    Boolean precursorPrecursor
    Boolean precursorPrecursor
    Boolean precursorPrecursor
    Boolean precursorPrecursor
    Boolean precursorPrecursor
    Boolean fragmentFragment
    Boolean fragmentFragment
    Boolean fragmentFragment
    Boolean modificationsModifications
    Boolean modificationsModifications
    Boolean modificationsModifications
    Boolean peptidePeptide
    Boolean peptidePeptide
    Boolean peptidePeptide
    Boolean crossCrossLinker
    Boolean crossCrossLinker
    Boolean crossCrossLinker
    Boolean crossCrossLinker
    Boolean crossCrossLinker
    Boolean crossCrossLinker
    Boolean algorithmAlgorithm
    String outOutIdxml
    String outOutMzIdentMl
    String outOutXQuestXml
    String outOutXQuestSpecXml
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    OpenPepXL \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(consensusConsensus) then ("-consensus " +  '"' + consensusConsensus + '"') else ""} \
      ~{if defined(databaseDatabase) then ("-database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(decoyDecoyString) then ("-decoy_string " +  '"' + decoyDecoyString + '"') else ""} \
      ~{if defined(decoyDecoyPrefix) then ("-decoy_prefix " +  '"' + decoyDecoyPrefix + '"') else ""} \
      ~{true="-precursor" false="" precursorPrecursor} \
      ~{true="-precursor" false="" precursorPrecursor} \
      ~{true="-precursor" false="" precursorPrecursor} \
      ~{true="-precursor" false="" precursorPrecursor} \
      ~{true="-precursor" false="" precursorPrecursor} \
      ~{true="-fragment" false="" fragmentFragment} \
      ~{true="-fragment" false="" fragmentFragment} \
      ~{true="-fragment" false="" fragmentFragment} \
      ~{true="-modifications" false="" modificationsModifications} \
      ~{true="-modifications" false="" modificationsModifications} \
      ~{true="-modifications" false="" modificationsModifications} \
      ~{true="-peptide" false="" peptidePeptide} \
      ~{true="-peptide" false="" peptidePeptide} \
      ~{true="-peptide" false="" peptidePeptide} \
      ~{true="-cross_linker" false="" crossCrossLinker} \
      ~{true="-cross_linker" false="" crossCrossLinker} \
      ~{true="-cross_linker" false="" crossCrossLinker} \
      ~{true="-cross_linker" false="" crossCrossLinker} \
      ~{true="-cross_linker" false="" crossCrossLinker} \
      ~{true="-cross_linker" false="" crossCrossLinker} \
      ~{true="-algorithm" false="" algorithmAlgorithm} \
      ~{if defined(outOutIdxml) then ("-out_idXML " +  '"' + outOutIdxml + '"') else ""} \
      ~{if defined(outOutMzIdentMl) then ("-out_mzIdentML " +  '"' + outOutMzIdentMl + '"') else ""} \
      ~{if defined(outOutXQuestXml) then ("-out_xquestxml " +  '"' + outOutXQuestXml + '"') else ""} \
      ~{if defined(outOutXQuestSpecXml) then ("-out_xquest_specxml " +  '"' + outOutXQuestSpecXml + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}