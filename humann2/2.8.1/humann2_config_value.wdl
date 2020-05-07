version 1.0

task Humann2ConfigValue {
  input {
    Boolean printPrint
    String updateUpdate
    String? nameName
    String? valueValue
  }
  command <<<
    humann2_config value \
      ~{nameName} \
      ~{true="--print" false="" printPrint} \
      ~{if defined(updateUpdate) then ("--update " +  '"' + updateUpdate + '"') else ""} \
      ~{valueValue}
  >>>
}