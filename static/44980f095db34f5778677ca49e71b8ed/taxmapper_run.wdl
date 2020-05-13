version 1.0

task TaxmapperRun {
  input {
    String databaseDatabase
    Directory folderFolder
    String reverseReverse
    String suffixSuffix
    Int mM
    String outOut
    String threadsThreads
  }
  command <<<
    taxmapper run \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(folderFolder) then ("--folder " +  '"' + folderFolder + '"') else ""} \
      ~{if defined(reverseReverse) then ("--reverse " +  '"' + reverseReverse + '"') else ""} \
      ~{if defined(suffixSuffix) then ("--suffix " +  '"' + suffixSuffix + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}