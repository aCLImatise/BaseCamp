version 1.0

task Humann2ConfigName {
  input {
    Boolean printPrint
    String updateUpdate
    String? valueValue
  }
  command <<<
    humann2_config name \
      ~{valueValue} \
      ~{true="--print" false="" printPrint} \
      ~{if defined(updateUpdate) then ("--update " +  '"' + updateUpdate + '"') else ""}
  >>>
}