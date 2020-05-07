version 1.0

task MSstatsConverter {
  input {
    String inIn
    String inInDesign
    String msMsStatsBioReplicate
    String msMsStatsCondition
    Boolean labeledLabeledReferencePeptides
    String outOut
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    MSstatsConverter \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(inInDesign) then ("-in_design " +  '"' + inInDesign + '"') else ""} \
      ~{if defined(msMsStatsBioReplicate) then ("-msstats_bioreplicate " +  '"' + msMsStatsBioReplicate + '"') else ""} \
      ~{if defined(msMsStatsCondition) then ("-msstats_condition " +  '"' + msMsStatsCondition + '"') else ""} \
      ~{true="-labeled_reference_peptides" false="" labeledLabeledReferencePeptides} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}