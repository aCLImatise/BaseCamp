version 1.0

task PortcullisRuleFilter {
  input {
    String jsonJson
    Boolean posPosJson
    Boolean negNegJson
    String genuineGenuine
    String prefixPrefix
    Boolean saveSaveLayers
    Boolean saveSaveFailed
    Boolean verboseVerbose
    String? inputInput
  }
  command <<<
    portcullis_rule_filter \
      ~{inputInput} \
      ~{if defined(jsonJson) then ("--json " +  '"' + jsonJson + '"') else ""} \
      ~{true="--pos_json" false="" posPosJson} \
      ~{true="--neg_json" false="" negNegJson} \
      ~{if defined(genuineGenuine) then ("--genuine " +  '"' + genuineGenuine + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="--save_layers" false="" saveSaveLayers} \
      ~{true="--save_failed" false="" saveSaveFailed} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}