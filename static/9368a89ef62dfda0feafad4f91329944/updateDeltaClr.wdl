version 1.0

task UpdateDeltaClr {
  input {
    Boolean vV
    Boolean dependDepend
    String debugDebug
  }
  command <<<
    updateDeltaClr \
      ~{true="-V" false="" vV} \
      ~{true="-depend" false="" dependDepend} \
      ~{if defined(debugDebug) then ("-debug " +  '"' + debugDebug + '"') else ""}
  >>>
}