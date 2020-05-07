version 1.0

task ChadoDeleteOrganism {
  input {
    Boolean verboseVerbose
    String configConfig
    Boolean useUsePassword
    String abbreviationAbbreviation
    String? dbnameDbname
  }
  command <<<
    chado delete organism \
      ~{dbnameDbname} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{true="--use_password" false="" useUsePassword} \
      ~{if defined(abbreviationAbbreviation) then ("--abbreviation " +  '"' + abbreviationAbbreviation + '"') else ""}
  >>>
}