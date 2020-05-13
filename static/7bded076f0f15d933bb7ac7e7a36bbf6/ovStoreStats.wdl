version 1.0

task OvStoreStats {
  input {
    String cC
    Boolean cC
    Boolean vV
  }
  command <<<
    ovStoreStats \
      ~{if defined(cC) then ("-C " +  '"' + cC + '"') else ""} \
      ~{true="-c" false="" cC} \
      ~{true="-v" false="" vV}
  >>>
}