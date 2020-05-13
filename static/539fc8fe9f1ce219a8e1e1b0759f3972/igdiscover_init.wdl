version 1.0

task IgdiscoverInit {
  input {
    File databaseDatabase
    String singleSingleReads
    String readReadS1
  }
  command <<<
    igdiscover init \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(singleSingleReads) then ("--single-reads " +  '"' + singleSingleReads + '"') else ""} \
      ~{if defined(readReadS1) then ("--reads1 " +  '"' + readReadS1 + '"') else ""}
  >>>
}