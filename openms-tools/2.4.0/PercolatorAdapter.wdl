version 1.0

task PercolatorAdapter {
  input {
    File inIn
    File inInDecoy
    File inInOsw
    File outOut
    String outOutType
    String enzymeEnzyme
    String percolatorPercolatorExecutable
    Boolean peptidePeptideLevelFDrs
    Boolean proteinProteinLevelFDrs
    String oswOswLevel
    String scoreScoreType
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    PercolatorAdapter \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(inInDecoy) then ("-in_decoy " +  '"' + inInDecoy + '"') else ""} \
      ~{if defined(inInOsw) then ("-in_osw " +  '"' + inInOsw + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(outOutType) then ("-out_type " +  '"' + outOutType + '"') else ""} \
      ~{if defined(enzymeEnzyme) then ("-enzyme " +  '"' + enzymeEnzyme + '"') else ""} \
      ~{if defined(percolatorPercolatorExecutable) then ("-percolator_executable " +  '"' + percolatorPercolatorExecutable + '"') else ""} \
      ~{true="-peptide-level-fdrs" false="" peptidePeptideLevelFDrs} \
      ~{true="-protein-level-fdrs" false="" proteinProteinLevelFDrs} \
      ~{if defined(oswOswLevel) then ("-osw_level " +  '"' + oswOswLevel + '"') else ""} \
      ~{if defined(scoreScoreType) then ("-score_type " +  '"' + scoreScoreType + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}