version 1.0

task NucmerAnnotate {
  input {
    String ignoreIgnore
    Boolean allAll
    Boolean looseLoose
    Boolean noNoId
    Boolean vV
    Boolean dependDepend
    String debugDebug
  }
  command <<<
    nucmerAnnotate \
      ~{if defined(ignoreIgnore) then ("-ignore " +  '"' + ignoreIgnore + '"') else ""} \
      ~{true="-all" false="" allAll} \
      ~{true="-loose" false="" looseLoose} \
      ~{true="-noid" false="" noNoId} \
      ~{true="-V" false="" vV} \
      ~{true="-depend" false="" dependDepend} \
      ~{if defined(debugDebug) then ("-debug " +  '"' + debugDebug + '"') else ""}
  >>>
}