version 1.0

task LwpMirror {
  input {
    Boolean vV
    String tT
  }
  command <<<
    lwp-mirror \
      ~{true="-v" false="" vV} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""}
  >>>
}