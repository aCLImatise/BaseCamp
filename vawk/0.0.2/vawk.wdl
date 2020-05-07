version 1.0

task Vawk {
  input {
    String vV
    String cC
    Boolean headerHeader
    Boolean debugDebug
  }
  command <<<
    vawk \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{true="--header" false="" headerHeader} \
      ~{true="--debug" false="" debugDebug}
  >>>
}