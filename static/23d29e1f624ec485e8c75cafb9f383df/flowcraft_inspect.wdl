version 1.0

task FlowcraftInspect {
  input {
    String iI
    String rR
    String modeMode
    String urlUrl
    Boolean prettyPretty
  }
  command <<<
    flowcraft inspect \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{if defined(urlUrl) then ("--url " +  '"' + urlUrl + '"') else ""} \
      ~{true="--pretty" false="" prettyPretty}
  >>>
}