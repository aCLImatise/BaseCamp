version 1.0

task ProteinInference {
  input {
    File inIn
    File outOut
    String minMinPeptidesPerProtein
    Boolean treatTreatChargeVariantsSeparately
    Boolean treatTreatModificationVariantsSeparately
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    ProteinInference \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(minMinPeptidesPerProtein) then ("-min_peptides_per_protein " +  '"' + minMinPeptidesPerProtein + '"') else ""} \
      ~{true="-treat_charge_variants_separately" false="" treatTreatChargeVariantsSeparately} \
      ~{true="-treat_modification_variants_separately" false="" treatTreatModificationVariantsSeparately} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}