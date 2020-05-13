version 1.0

task Delta2clr {
  input {
    Boolean vV
    Boolean dependDepend
    String debugDebug
  }
  command <<<
    delta2clr \
      ~{true="-V" false="" vV} \
      ~{true="-depend" false="" dependDepend} \
      ~{if defined(debugDebug) then ("-debug " +  '"' + debugDebug + '"') else ""}
  >>>
}