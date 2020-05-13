version 1.0

task Quickjunc {
  input {
    String iI
    String aA
  }
  command <<<
    quickjunc \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""}
  >>>
}