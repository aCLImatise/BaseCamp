version 1.0

task Nucmer2ovl {
  input {
    Boolean tabTab
    String ignoreIgnore
    Boolean vV
    Boolean dependDepend
    String debugDebug
  }
  command <<<
    nucmer2ovl \
      ~{true="-tab" false="" tabTab} \
      ~{if defined(ignoreIgnore) then ("-ignore " +  '"' + ignoreIgnore + '"') else ""} \
      ~{true="-V" false="" vV} \
      ~{true="-depend" false="" dependDepend} \
      ~{if defined(debugDebug) then ("-debug " +  '"' + debugDebug + '"') else ""}
  >>>
}