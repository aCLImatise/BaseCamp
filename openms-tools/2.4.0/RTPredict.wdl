version 1.0

task RTPredict {
  input {
    File inInId
    File inInText
    File inInOligoParams
    File inInOligoTrainSet
    File svmSvmModel
    String totalTotalGradientTime
    Boolean outOutId
    Boolean outOutId
    Boolean outOutId
    Boolean outOutText
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    RTPredict \
      ~{if defined(inInId) then ("-in_id " +  '"' + inInId + '"') else ""} \
      ~{if defined(inInText) then ("-in_text " +  '"' + inInText + '"') else ""} \
      ~{if defined(inInOligoParams) then ("-in_oligo_params " +  '"' + inInOligoParams + '"') else ""} \
      ~{if defined(inInOligoTrainSet) then ("-in_oligo_trainset " +  '"' + inInOligoTrainSet + '"') else ""} \
      ~{if defined(svmSvmModel) then ("-svm_model " +  '"' + svmSvmModel + '"') else ""} \
      ~{if defined(totalTotalGradientTime) then ("-total_gradient_time " +  '"' + totalTotalGradientTime + '"') else ""} \
      ~{true="-out_id" false="" outOutId} \
      ~{true="-out_id" false="" outOutId} \
      ~{true="-out_id" false="" outOutId} \
      ~{true="-out_text" false="" outOutText} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}