version 1.0

task PTPredict {
  input {
    File inIn
    File outOut
    File svmSvmModel
    Int maxMaxNumberOfPeptides
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    PTPredict \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(svmSvmModel) then ("-svm_model " +  '"' + svmSvmModel + '"') else ""} \
      ~{if defined(maxMaxNumberOfPeptides) then ("-max_number_of_peptides " +  '"' + maxMaxNumberOfPeptides + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}