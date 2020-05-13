version 1.0

task SnpSiftIntIdx {
  input {
    String ifIf
    Boolean iI
  }
  command <<<
    SnpSift intIdx \
      ~{if defined(ifIf) then ("-if " +  '"' + ifIf + '"') else ""} \
      ~{true="-i" false="" iI}
  >>>
}