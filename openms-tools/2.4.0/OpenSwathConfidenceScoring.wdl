version 1.0

task OpenSwathConfidenceScoring {
  input {
    File inIn
    File libLib
    File outOut
    File trafTrafO
    String decoysDecoys
    String transitionsTransitions
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    OpenSwathConfidenceScoring \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(libLib) then ("-lib " +  '"' + libLib + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(trafTrafO) then ("-trafo " +  '"' + trafTrafO + '"') else ""} \
      ~{if defined(decoysDecoys) then ("-decoys " +  '"' + decoysDecoys + '"') else ""} \
      ~{if defined(transitionsTransitions) then ("-transitions " +  '"' + transitionsTransitions + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}