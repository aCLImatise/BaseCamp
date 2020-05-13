version 1.0

task QCEmbedder {
  input {
    File inIn
    String qpQpAttAcc
    String cvCvAcc
    File runRun
    String nameName
    File plotPlot
    File tableTable
    File outOut
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    QCEmbedder \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(qpQpAttAcc) then ("-qp_att_acc " +  '"' + qpQpAttAcc + '"') else ""} \
      ~{if defined(cvCvAcc) then ("-cv_acc " +  '"' + cvCvAcc + '"') else ""} \
      ~{if defined(runRun) then ("-run " +  '"' + runRun + '"') else ""} \
      ~{if defined(nameName) then ("-name " +  '"' + nameName + '"') else ""} \
      ~{if defined(plotPlot) then ("-plot " +  '"' + plotPlot + '"') else ""} \
      ~{if defined(tableTable) then ("-table " +  '"' + tableTable + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}