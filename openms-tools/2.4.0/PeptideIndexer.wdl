version 1.0

task PeptideIndexer {
  input {
    File inIn
    File fastFastA
    File outOut
    String decoyDecoyString
    String decoyDecoyStringPosition
    String missingMissingDecoyAction
    Boolean writeWriteProteinSequence
    Boolean writeWriteProteinDescription
    Boolean keepKeepUnreferencedProteins
    Boolean allowAllowUnmatched
    String aaaAaaMax
    String mismatchesMismatchesMax
    Boolean ilIlEquivalent
    Boolean enzymeEnzyme
    Boolean enzymeEnzyme
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    PeptideIndexer \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(fastFastA) then ("-fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(decoyDecoyString) then ("-decoy_string " +  '"' + decoyDecoyString + '"') else ""} \
      ~{if defined(decoyDecoyStringPosition) then ("-decoy_string_position " +  '"' + decoyDecoyStringPosition + '"') else ""} \
      ~{if defined(missingMissingDecoyAction) then ("-missing_decoy_action " +  '"' + missingMissingDecoyAction + '"') else ""} \
      ~{true="-write_protein_sequence" false="" writeWriteProteinSequence} \
      ~{true="-write_protein_description" false="" writeWriteProteinDescription} \
      ~{true="-keep_unreferenced_proteins" false="" keepKeepUnreferencedProteins} \
      ~{true="-allow_unmatched" false="" allowAllowUnmatched} \
      ~{if defined(aaaAaaMax) then ("-aaa_max " +  '"' + aaaAaaMax + '"') else ""} \
      ~{if defined(mismatchesMismatchesMax) then ("-mismatches_max " +  '"' + mismatchesMismatchesMax + '"') else ""} \
      ~{true="-IL_equivalent" false="" ilIlEquivalent} \
      ~{true="-enzyme" false="" enzymeEnzyme} \
      ~{true="-enzyme" false="" enzymeEnzyme} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}