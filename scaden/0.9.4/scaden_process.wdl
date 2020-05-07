version 1.0

task ScadenProcess {
  input {
    String processedProcessedPath
    Float varVarCutOff
  }
  command <<<
    scaden process \
      ~{if defined(processedProcessedPath) then ("--processed_path " +  '"' + processedProcessedPath + '"') else ""} \
      ~{if defined(varVarCutOff) then ("--var_cutoff " +  '"' + varVarCutOff + '"') else ""}
  >>>
}