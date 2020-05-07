version 1.0

task Digestor {
  input {
    File inIn
    File outOut
    String outOutType
    String missedMissedCleavages
    String minMinLength
    String maxMaxLength
    String enzymeEnzyme
    Boolean fastFastA
    Boolean fastFastA
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    Digestor \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(outOutType) then ("-out_type " +  '"' + outOutType + '"') else ""} \
      ~{if defined(missedMissedCleavages) then ("-missed_cleavages " +  '"' + missedMissedCleavages + '"') else ""} \
      ~{if defined(minMinLength) then ("-min_length " +  '"' + minMinLength + '"') else ""} \
      ~{if defined(maxMaxLength) then ("-max_length " +  '"' + maxMaxLength + '"') else ""} \
      ~{if defined(enzymeEnzyme) then ("-enzyme " +  '"' + enzymeEnzyme + '"') else ""} \
      ~{true="-FASTA" false="" fastFastA} \
      ~{true="-FASTA" false="" fastFastA} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}