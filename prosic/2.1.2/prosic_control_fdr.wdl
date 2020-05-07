version 1.0

task ProsicControlFdr {
  input {
    String fdrFdr
    String eventEvent
    Int maxMaxLen
    Int minMinLen
    String varVar
    String? optionsOptions
    String? bcfBcf
  }
  command <<<
    prosic control-fdr \
      ~{optionsOptions} \
      ~{if defined(fdrFdr) then ("--fdr " +  '"' + fdrFdr + '"') else ""} \
      ~{if defined(eventEvent) then ("--event " +  '"' + eventEvent + '"') else ""} \
      ~{if defined(maxMaxLen) then ("--max-len " +  '"' + maxMaxLen + '"') else ""} \
      ~{if defined(minMinLen) then ("--min-len " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(varVar) then ("--var " +  '"' + varVar + '"') else ""} \
      ~{bcfBcf}
  >>>
}