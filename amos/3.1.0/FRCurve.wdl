version 1.0

task FRCurve {
  input {
    String dD
    String dD
    Boolean columnColumn
    Boolean columnColumn
    Boolean columnColumn
  }
  command <<<
    FRCurve \
      ~{if defined(dD) then ("-D " +  '"' + dD + '"') else ""} \
      ~{if defined(dD) then ("-D " +  '"' + dD + '"') else ""} \
      ~{true="- column" false="" columnColumn} \
      ~{true="- column" false="" columnColumn} \
      ~{true="- column" false="" columnColumn}
  >>>
}