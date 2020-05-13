version 1.0

task DigestorMotif {
  input {
    File inIn
    File outOut
    String missedMissedCleavages
    String massMassAccuracy
    String minMinLength
    String outOutOption
    String enzymeEnzyme
    String motifMotif
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    DigestorMotif \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(missedMissedCleavages) then ("-missed_cleavages " +  '"' + missedMissedCleavages + '"') else ""} \
      ~{if defined(massMassAccuracy) then ("-mass_accuracy " +  '"' + massMassAccuracy + '"') else ""} \
      ~{if defined(minMinLength) then ("-min_length " +  '"' + minMinLength + '"') else ""} \
      ~{if defined(outOutOption) then ("-out_option " +  '"' + outOutOption + '"') else ""} \
      ~{if defined(enzymeEnzyme) then ("-enzyme " +  '"' + enzymeEnzyme + '"') else ""} \
      ~{if defined(motifMotif) then ("-motif " +  '"' + motifMotif + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}