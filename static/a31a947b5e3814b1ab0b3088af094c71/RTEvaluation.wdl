version 1.0

task RTEvaluation {
  input {
    File inIn
    File outOut
    Boolean latexLatex
    Float pPValueDim1
    Float pPValueDim2
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    RTEvaluation \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-latex" false="" latexLatex} \
      ~{if defined(pPValueDim1) then ("-p_value_dim_1 " +  '"' + pPValueDim1 + '"') else ""} \
      ~{if defined(pPValueDim2) then ("-p_value_dim_2 " +  '"' + pPValueDim2 + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}