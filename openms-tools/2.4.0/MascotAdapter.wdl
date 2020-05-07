version 1.0

task MascotAdapter {
  input {
    File inIn
    File outOut
    Boolean mascotMascotIn
    Boolean mascotMascotOut
    String instrumentInstrument
    String precursorPrecursorMassTolerance
    String peakPeakMassTolerance
    String taxonomyTaxonomy
    String modificationsModifications
    String variableVariableModifications
    Boolean chargesCharges
    String dbDb
    String hitsHits
    String cleavageCleavage
    String missedMissedCleavages
    String sigSigThreshold
    String pepPepHomol
    String pepPepIdent
    String pepPepRank
    String protProtScore
    String pepPepScore
    String pepPepExpZ
    String showShowUnassigned
    String firstFirstDimRt
    String boundaryBoundary
    String massMassType
    String mascotMascotDirectory
    String tempTempDataDirectory
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    MascotAdapter \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-mascot_in" false="" mascotMascotIn} \
      ~{true="-mascot_out" false="" mascotMascotOut} \
      ~{if defined(instrumentInstrument) then ("-instrument " +  '"' + instrumentInstrument + '"') else ""} \
      ~{if defined(precursorPrecursorMassTolerance) then ("-precursor_mass_tolerance " +  '"' + precursorPrecursorMassTolerance + '"') else ""} \
      ~{if defined(peakPeakMassTolerance) then ("-peak_mass_tolerance " +  '"' + peakPeakMassTolerance + '"') else ""} \
      ~{if defined(taxonomyTaxonomy) then ("-taxonomy " +  '"' + taxonomyTaxonomy + '"') else ""} \
      ~{if defined(modificationsModifications) then ("-modifications " +  '"' + modificationsModifications + '"') else ""} \
      ~{if defined(variableVariableModifications) then ("-variable_modifications " +  '"' + variableVariableModifications + '"') else ""} \
      ~{true="-charges" false="" chargesCharges} \
      ~{if defined(dbDb) then ("-db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(hitsHits) then ("-hits " +  '"' + hitsHits + '"') else ""} \
      ~{if defined(cleavageCleavage) then ("-cleavage " +  '"' + cleavageCleavage + '"') else ""} \
      ~{if defined(missedMissedCleavages) then ("-missed_cleavages " +  '"' + missedMissedCleavages + '"') else ""} \
      ~{if defined(sigSigThreshold) then ("-sig_threshold " +  '"' + sigSigThreshold + '"') else ""} \
      ~{if defined(pepPepHomol) then ("-pep_homol " +  '"' + pepPepHomol + '"') else ""} \
      ~{if defined(pepPepIdent) then ("-pep_ident " +  '"' + pepPepIdent + '"') else ""} \
      ~{if defined(pepPepRank) then ("-pep_rank " +  '"' + pepPepRank + '"') else ""} \
      ~{if defined(protProtScore) then ("-prot_score " +  '"' + protProtScore + '"') else ""} \
      ~{if defined(pepPepScore) then ("-pep_score " +  '"' + pepPepScore + '"') else ""} \
      ~{if defined(pepPepExpZ) then ("-pep_exp_z " +  '"' + pepPepExpZ + '"') else ""} \
      ~{if defined(showShowUnassigned) then ("-show_unassigned " +  '"' + showShowUnassigned + '"') else ""} \
      ~{if defined(firstFirstDimRt) then ("-first_dim_rt " +  '"' + firstFirstDimRt + '"') else ""} \
      ~{if defined(boundaryBoundary) then ("-boundary " +  '"' + boundaryBoundary + '"') else ""} \
      ~{if defined(massMassType) then ("-mass_type " +  '"' + massMassType + '"') else ""} \
      ~{if defined(mascotMascotDirectory) then ("-mascot_directory " +  '"' + mascotMascotDirectory + '"') else ""} \
      ~{if defined(tempTempDataDirectory) then ("-temp_data_directory " +  '"' + tempTempDataDirectory + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}