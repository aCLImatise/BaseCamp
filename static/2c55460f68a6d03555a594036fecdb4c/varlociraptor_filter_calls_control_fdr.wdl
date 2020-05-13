version 1.0

task VarlociraptorFilterCallsControlFdr {
  input {
    String eventsEvents
    String fdrFdr
    Int maxlenMaxlen
    Int minMinLen
    String varVar
  }
  command <<<
    varlociraptor filter-calls control-fdr \
      ~{if defined(eventsEvents) then ("--events " +  '"' + eventsEvents + '"') else ""} \
      ~{if defined(fdrFdr) then ("--fdr " +  '"' + fdrFdr + '"') else ""} \
      ~{if defined(maxlenMaxlen) then ("--maxlen " +  '"' + maxlenMaxlen + '"') else ""} \
      ~{if defined(minMinLen) then ("--minlen " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(varVar) then ("--var " +  '"' + varVar + '"') else ""}
  >>>
}