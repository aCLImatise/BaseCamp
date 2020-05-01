version 1.0

task FeatureFinderMultiplex {
  input {
    File inIn
    File outOut
    Boolean algorithmAlgorithm
    Boolean algorithmAlgorithm
    Boolean algorithmAlgorithm
    Boolean algorithmAlgorithm
    Boolean algorithmAlgorithm
    Boolean algorithmAlgorithm
    Boolean algorithmAlgorithm
    Boolean algorithmAlgorithm
    Boolean algorithmAlgorithm
    Boolean algorithmAlgorithm
    Boolean algorithmAlgorithm
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    FeatureFinderMultiplex \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-algorithm" false="" algorithmAlgorithm} \
      ~{true="-algorithm" false="" algorithmAlgorithm} \
      ~{true="-algorithm" false="" algorithmAlgorithm} \
      ~{true="-algorithm" false="" algorithmAlgorithm} \
      ~{true="-algorithm" false="" algorithmAlgorithm} \
      ~{true="-algorithm" false="" algorithmAlgorithm} \
      ~{true="-algorithm" false="" algorithmAlgorithm} \
      ~{true="-algorithm" false="" algorithmAlgorithm} \
      ~{true="-algorithm" false="" algorithmAlgorithm} \
      ~{true="-algorithm" false="" algorithmAlgorithm} \
      ~{true="-algorithm" false="" algorithmAlgorithm} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}