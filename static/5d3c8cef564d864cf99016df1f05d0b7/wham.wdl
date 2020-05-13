version 1.0

task Wham {
  input {
    String ifIf
    String theThe
    String ifIf
  }
  command <<<
    wham \
      ~{if defined(ifIf) then ("-If " +  '"' + ifIf + '"') else ""} \
      ~{if defined(theThe) then ("-The " +  '"' + theThe + '"') else ""} \
      ~{if defined(ifIf) then ("-If " +  '"' + ifIf + '"') else ""}
  >>>
}