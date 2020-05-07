version 1.0

task DumpContigsAsReads {
  input {
    Boolean bankBank
    File eE
    File iI
  }
  command <<<
    dumpContigsAsReads \
      ~{true="-bank" false="" bankBank} \
      ~{if defined(eE) then ("-E " +  '"' + eE + '"') else ""} \
      ~{if defined(iI) then ("-I " +  '"' + iI + '"') else ""}
  >>>
}