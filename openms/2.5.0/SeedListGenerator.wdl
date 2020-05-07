version 1.0

task SeedListGenerator {
  input {
    File inIn
    Boolean outOut
    Boolean useUsePeptideMass
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    SeedListGenerator \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{true="-out" false="" outOut} \
      ~{true="-use_peptide_mass" false="" useUsePeptideMass} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}