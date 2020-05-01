version 1.0

task ProteinQuantifier {
  input {
    File inIn
    File proteinProteinGroups
    File outOut
    File peptidePeptideOut
    String topTop
    String averageAverage
    Boolean includeIncludeAll
    Boolean filterFilterCharge
    Boolean consensusConsensus
    Boolean consensusConsensus
    Boolean ratiosRatios
    Boolean ratiosRatiosSilaC
    Boolean formatFormat
    Boolean formatFormat
    Boolean formatFormat
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    ProteinQuantifier \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(proteinProteinGroups) then ("-protein_groups " +  '"' + proteinProteinGroups + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(peptidePeptideOut) then ("-peptide_out " +  '"' + peptidePeptideOut + '"') else ""} \
      ~{if defined(topTop) then ("-top " +  '"' + topTop + '"') else ""} \
      ~{if defined(averageAverage) then ("-average " +  '"' + averageAverage + '"') else ""} \
      ~{true="-include_all" false="" includeIncludeAll} \
      ~{true="-filter_charge" false="" filterFilterCharge} \
      ~{true="-consensus" false="" consensusConsensus} \
      ~{true="-consensus" false="" consensusConsensus} \
      ~{true="-ratios" false="" ratiosRatios} \
      ~{true="-ratiosSILAC" false="" ratiosRatiosSilaC} \
      ~{true="-format" false="" formatFormat} \
      ~{true="-format" false="" formatFormat} \
      ~{true="-format" false="" formatFormat} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}