version 1.0

task CruxAdapter {
  input {
    File inIn
    File outOut
    File databaseDatabase
    String cruxCruxExecutable
    String extraExtraIndexArgs
    String extraExtraSearchArgs
    String extraExtraPercolatorArgs
    String precursorPrecursorMassTolerance
    String precursorPrecursorMassUnits
    String fragmentFragmentBinOffset
    String fragmentFragmentBinWidth
    String isotopeIsotopeError
    Boolean runRunPercolator
    String enzymeEnzyme
    String digestionDigestion
    String allowedAllowedMissedCleavages
    String decoyDecoyFormat
    String keepKeepTerminalAminos
    String cCTermModifications
    String nNTermModifications
    String modificationsModifications
    String testTestFdr
    String trainTrainFdr
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    CruxAdapter \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(databaseDatabase) then ("-database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(cruxCruxExecutable) then ("-crux_executable " +  '"' + cruxCruxExecutable + '"') else ""} \
      ~{if defined(extraExtraIndexArgs) then ("-extra_index_args " +  '"' + extraExtraIndexArgs + '"') else ""} \
      ~{if defined(extraExtraSearchArgs) then ("-extra_search_args " +  '"' + extraExtraSearchArgs + '"') else ""} \
      ~{if defined(extraExtraPercolatorArgs) then ("-extra_percolator_args " +  '"' + extraExtraPercolatorArgs + '"') else ""} \
      ~{if defined(precursorPrecursorMassTolerance) then ("-precursor_mass_tolerance " +  '"' + precursorPrecursorMassTolerance + '"') else ""} \
      ~{if defined(precursorPrecursorMassUnits) then ("-precursor_mass_units " +  '"' + precursorPrecursorMassUnits + '"') else ""} \
      ~{if defined(fragmentFragmentBinOffset) then ("-fragment_bin_offset " +  '"' + fragmentFragmentBinOffset + '"') else ""} \
      ~{if defined(fragmentFragmentBinWidth) then ("-fragment_bin_width " +  '"' + fragmentFragmentBinWidth + '"') else ""} \
      ~{if defined(isotopeIsotopeError) then ("-isotope_error " +  '"' + isotopeIsotopeError + '"') else ""} \
      ~{true="-run_percolator" false="" runRunPercolator} \
      ~{if defined(enzymeEnzyme) then ("-enzyme " +  '"' + enzymeEnzyme + '"') else ""} \
      ~{if defined(digestionDigestion) then ("-digestion " +  '"' + digestionDigestion + '"') else ""} \
      ~{if defined(allowedAllowedMissedCleavages) then ("-allowed_missed_cleavages " +  '"' + allowedAllowedMissedCleavages + '"') else ""} \
      ~{if defined(decoyDecoyFormat) then ("-decoy-format " +  '"' + decoyDecoyFormat + '"') else ""} \
      ~{if defined(keepKeepTerminalAminos) then ("-keep-terminal-aminos " +  '"' + keepKeepTerminalAminos + '"') else ""} \
      ~{if defined(cCTermModifications) then ("-cterm_modifications " +  '"' + cCTermModifications + '"') else ""} \
      ~{if defined(nNTermModifications) then ("-nterm_modifications " +  '"' + nNTermModifications + '"') else ""} \
      ~{if defined(modificationsModifications) then ("-modifications " +  '"' + modificationsModifications + '"') else ""} \
      ~{if defined(testTestFdr) then ("-test_fdr " +  '"' + testTestFdr + '"') else ""} \
      ~{if defined(trainTrainFdr) then ("-train_fdr " +  '"' + trainTrainFdr + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}