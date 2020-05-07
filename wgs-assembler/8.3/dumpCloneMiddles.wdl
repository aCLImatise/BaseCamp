version 1.0

task DumpCloneMiddles {
  input {
    String pP
    Boolean ctgCtg
    Boolean scfScf
    String iI
    Int lL
    Boolean sS
  }
  command <<<
    dumpCloneMiddles \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-ctg" false="" ctgCtg} \
      ~{true="-scf" false="" scfScf} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{true="-S" false="" sS}
  >>>
}