version 1.0

task FeatureFinderMetaboIdent {
  input {
    File inIn
    File idId
    File outOut
    File libLibOut
    File chromChromOut
    File candidatesCandidatesOut
    File trafTrafOOut
    Boolean extractExtract
    Boolean extractExtract
    Boolean extractExtract
    Boolean detectDetect
    Boolean modelModel
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    FeatureFinderMetaboIdent \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(idId) then ("-id " +  '"' + idId + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(libLibOut) then ("-lib_out " +  '"' + libLibOut + '"') else ""} \
      ~{if defined(chromChromOut) then ("-chrom_out " +  '"' + chromChromOut + '"') else ""} \
      ~{if defined(candidatesCandidatesOut) then ("-candidates_out " +  '"' + candidatesCandidatesOut + '"') else ""} \
      ~{if defined(trafTrafOOut) then ("-trafo_out " +  '"' + trafTrafOOut + '"') else ""} \
      ~{true="-extract" false="" extractExtract} \
      ~{true="-extract" false="" extractExtract} \
      ~{true="-extract" false="" extractExtract} \
      ~{true="-detect" false="" detectDetect} \
      ~{true="-model" false="" modelModel} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}