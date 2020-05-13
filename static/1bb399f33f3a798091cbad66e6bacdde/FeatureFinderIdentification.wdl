version 1.0

task FeatureFinderIdentification {
  input {
    File inIn
    File idId
    File idIdExt
    File outOut
    File libLibOut
    File chromChromOut
    File candidatesCandidatesOut
    Boolean extractExtract
    Boolean extractExtract
    Boolean extractExtract
    Boolean detectDetect
    Boolean detectDetect
    Boolean svmSvm
    Boolean svmSvm
    Boolean svmSvm
    Boolean svmSvm
    Boolean svmSvm
    Boolean svmSvm
    Boolean svmSvm
    Boolean modelModel
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    FeatureFinderIdentification \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(idId) then ("-id " +  '"' + idId + '"') else ""} \
      ~{if defined(idIdExt) then ("-id_ext " +  '"' + idIdExt + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(libLibOut) then ("-lib_out " +  '"' + libLibOut + '"') else ""} \
      ~{if defined(chromChromOut) then ("-chrom_out " +  '"' + chromChromOut + '"') else ""} \
      ~{if defined(candidatesCandidatesOut) then ("-candidates_out " +  '"' + candidatesCandidatesOut + '"') else ""} \
      ~{true="-extract" false="" extractExtract} \
      ~{true="-extract" false="" extractExtract} \
      ~{true="-extract" false="" extractExtract} \
      ~{true="-detect" false="" detectDetect} \
      ~{true="-detect" false="" detectDetect} \
      ~{true="-svm" false="" svmSvm} \
      ~{true="-svm" false="" svmSvm} \
      ~{true="-svm" false="" svmSvm} \
      ~{true="-svm" false="" svmSvm} \
      ~{true="-svm" false="" svmSvm} \
      ~{true="-svm" false="" svmSvm} \
      ~{true="-svm" false="" svmSvm} \
      ~{true="-model" false="" modelModel} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}