version 1.0

task TransformationEvaluation {
  input {
    File inIn
    File outOut
    String minMin
    String maxMax
    String stepStep
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    TransformationEvaluation \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(minMin) then ("-min " +  '"' + minMin + '"') else ""} \
      ~{if defined(maxMax) then ("-max " +  '"' + maxMax + '"') else ""} \
      ~{if defined(stepStep) then ("-step " +  '"' + stepStep + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}