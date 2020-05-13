version 1.0

task SparseUpdate {
  input {
    String nN
    String sS
  }
  command <<<
    sparse update \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""}
  >>>
}