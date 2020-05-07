version 1.0

task GetFRCvalues {
  input {
    Boolean columnColumn
    Boolean columnColumn
    Boolean columnColumn
    String? assemblerAssembler
  }
  command <<<
    getFRCvalues \
      ~{assemblerAssembler} \
      ~{true="- column" false="" columnColumn} \
      ~{true="- column" false="" columnColumn} \
      ~{true="- column" false="" columnColumn}
  >>>
}