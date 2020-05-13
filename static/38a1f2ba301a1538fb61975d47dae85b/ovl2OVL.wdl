version 1.0

task Ovl2OVL {
  input {
    Boolean vV
    Boolean dependDepend
    String debugDebug
  }
  command <<<
    ovl2OVL \
      ~{true="-V" false="" vV} \
      ~{true="-depend" false="" dependDepend} \
      ~{if defined(debugDebug) then ("-debug " +  '"' + debugDebug + '"') else ""}
  >>>
}