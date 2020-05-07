version 1.0

task BedPileUps {
  input {
    String includeInclude
    String useUse
    Boolean verboseVerbose
    String? inInBed
  }
  command <<<
    bedPileUps \
      ~{inInBed} \
      ~{if defined(includeInclude) then ("- include " +  '"' + includeInclude + '"') else ""} \
      ~{if defined(useUse) then ("- use " +  '"' + useUse + '"') else ""} \
      ~{true="-verbose" false="" verboseVerbose}
  >>>
}