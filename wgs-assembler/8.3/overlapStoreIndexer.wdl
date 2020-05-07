version 1.0

task OverlapStoreIndexer {
  input {
    String oO
    String fF
    String tT
    Boolean fF
    Boolean deleteDelete
  }
  command <<<
    overlapStoreIndexer \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(fF) then ("-F " +  '"' + fF + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{true="-delete" false="" deleteDelete}
  >>>
}