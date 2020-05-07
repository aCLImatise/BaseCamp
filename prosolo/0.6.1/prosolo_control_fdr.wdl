version 1.0

task ProsoloControlFdr {
  input {
    String fdrFdr
    Boolean eventsEvents
    Int maxMaxLen
    Int minMinLen
    File outputOutput
    String varVar
  }
  command <<<
    prosolo control-fdr \
      ~{if defined(fdrFdr) then ("--fdr " +  '"' + fdrFdr + '"') else ""} \
      ~{true="--events" false="" eventsEvents} \
      ~{if defined(maxMaxLen) then ("--max-len " +  '"' + maxMaxLen + '"') else ""} \
      ~{if defined(minMinLen) then ("--min-len " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(varVar) then ("--var " +  '"' + varVar + '"') else ""}
  >>>
}