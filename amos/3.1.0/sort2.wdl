version 1.0

task Sort2 {
  input {
    String iI
    String jJ
    Boolean vV
    Boolean dependDepend
    String debugDebug
  }
  command <<<
    sort2 \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(jJ) then ("-j " +  '"' + jJ + '"') else ""} \
      ~{true="-V" false="" vV} \
      ~{true="-depend" false="" dependDepend} \
      ~{if defined(debugDebug) then ("-debug " +  '"' + debugDebug + '"') else ""}
  >>>
}