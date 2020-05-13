version 1.0

task TaxmapperSearch {
  input {
    File forwardForward
    File reverseReverse
    String rapRapSearch
    String databaseDatabase
    String outOut
    String threadsThreads
  }
  command <<<
    taxmapper search \
      ~{if defined(forwardForward) then ("--forward " +  '"' + forwardForward + '"') else ""} \
      ~{if defined(reverseReverse) then ("--reverse " +  '"' + reverseReverse + '"') else ""} \
      ~{if defined(rapRapSearch) then ("--rapsearch " +  '"' + rapRapSearch + '"') else ""} \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}