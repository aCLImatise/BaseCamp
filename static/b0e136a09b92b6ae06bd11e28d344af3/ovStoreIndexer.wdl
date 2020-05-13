version 1.0

task OvStoreIndexer {
  input {
    String oO
    String sS
    String cC
    Boolean deleteDelete
  }
  command <<<
    ovStoreIndexer \
      ~{if defined(oO) then ("-O " +  '"' + oO + '"') else ""} \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(cC) then ("-C " +  '"' + cC + '"') else ""} \
      ~{true="-delete" false="" deleteDelete}
  >>>
}