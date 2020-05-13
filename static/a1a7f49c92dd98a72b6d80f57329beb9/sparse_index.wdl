version 1.0

task SparseIndex {
  input {
    String nN
    Boolean uU
    String sS
    String tT
  }
  command <<<
    sparse index \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{true="-u" false="" uU} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""}
  >>>
}