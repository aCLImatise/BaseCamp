version 1.0

task Linknets {
  input {
    Boolean inInUnits
    String inInConnect
    Boolean directDirect
    String outOutConnect
    String inInConnect
  }
  command <<<
    linknets \
      ~{true="-inunits" false="" inInUnits} \
      ~{if defined(inInConnect) then ("-inconnect " +  '"' + inInConnect + '"') else ""} \
      ~{true="-direct" false="" directDirect} \
      ~{if defined(outOutConnect) then ("-outconnect " +  '"' + outOutConnect + '"') else ""} \
      ~{if defined(inInConnect) then ("-inconnect " +  '"' + inInConnect + '"') else ""}
  >>>
}