version 1.0

task RascafJoin {
  input {
    String rR
    String oO
    Int msMs
    Boolean ignoreIgnoreGap
    String? rasRasCafJoin
    String? optionsOptions
  }
  command <<<
    rascaf-join \
      ~{rasRasCafJoin} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(msMs) then ("-ms " +  '"' + msMs + '"') else ""} \
      ~{true="-ignoreGap" false="" ignoreIgnoreGap} \
      ~{optionsOptions}
  >>>
}