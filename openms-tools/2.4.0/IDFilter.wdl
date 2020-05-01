version 1.0

task IDFilter {
  input {
    File inIn
    File outOut
    Boolean precursorPrecursor
    Boolean precursorPrecursor
    Boolean scoreScore
    Boolean scoreScore
    Boolean whitelistWhitelist
    Boolean whitelistWhitelist
    Boolean whitelistWhitelist
    Boolean whitelistWhitelist
    Boolean whitelistWhitelist
    Boolean blacklistBlacklist
    Boolean blacklistBlacklist
    Boolean blacklistBlacklist
    Boolean blacklistBlacklist
    Boolean blacklistBlacklist
    Boolean inInSilicoDigestion
    Boolean inInSilicoDigestion
    Boolean inInSilicoDigestion
    Boolean inInSilicoDigestion
    Boolean inInSilicoDigestion
    Boolean missedMissedCleavages
    Boolean missedMissedCleavages
    Boolean mzMz
    Boolean mzMz
    Boolean bestBest
    Boolean bestBest
    Boolean bestBest
    Boolean lengthLength
    Boolean chargeCharge
    Boolean varVarMods
    Boolean uniqueUnique
    Boolean uniqueUniquePerProtein
    Boolean keepKeepUnreferencedProteinHits
    Boolean removeRemoveDecoys
    Boolean deleteDeleteUnreferencedPeptideHits
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    IDFilter \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-precursor" false="" precursorPrecursor} \
      ~{true="-precursor" false="" precursorPrecursor} \
      ~{true="-score" false="" scoreScore} \
      ~{true="-score" false="" scoreScore} \
      ~{true="-whitelist" false="" whitelistWhitelist} \
      ~{true="-whitelist" false="" whitelistWhitelist} \
      ~{true="-whitelist" false="" whitelistWhitelist} \
      ~{true="-whitelist" false="" whitelistWhitelist} \
      ~{true="-whitelist" false="" whitelistWhitelist} \
      ~{true="-blacklist" false="" blacklistBlacklist} \
      ~{true="-blacklist" false="" blacklistBlacklist} \
      ~{true="-blacklist" false="" blacklistBlacklist} \
      ~{true="-blacklist" false="" blacklistBlacklist} \
      ~{true="-blacklist" false="" blacklistBlacklist} \
      ~{true="-in_silico_digestion" false="" inInSilicoDigestion} \
      ~{true="-in_silico_digestion" false="" inInSilicoDigestion} \
      ~{true="-in_silico_digestion" false="" inInSilicoDigestion} \
      ~{true="-in_silico_digestion" false="" inInSilicoDigestion} \
      ~{true="-in_silico_digestion" false="" inInSilicoDigestion} \
      ~{true="-missed_cleavages" false="" missedMissedCleavages} \
      ~{true="-missed_cleavages" false="" missedMissedCleavages} \
      ~{true="-mz" false="" mzMz} \
      ~{true="-mz" false="" mzMz} \
      ~{true="-best" false="" bestBest} \
      ~{true="-best" false="" bestBest} \
      ~{true="-best" false="" bestBest} \
      ~{true="-length" false="" lengthLength} \
      ~{true="-charge" false="" chargeCharge} \
      ~{true="-var_mods" false="" varVarMods} \
      ~{true="-unique" false="" uniqueUnique} \
      ~{true="-unique_per_protein" false="" uniqueUniquePerProtein} \
      ~{true="-keep_unreferenced_protein_hits" false="" keepKeepUnreferencedProteinHits} \
      ~{true="-remove_decoys" false="" removeRemoveDecoys} \
      ~{true="-delete_unreferenced_peptide_hits" false="" deleteDeleteUnreferencedPeptideHits} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}