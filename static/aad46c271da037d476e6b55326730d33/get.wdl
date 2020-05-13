version 1.0

task Get {
  input {
    Array[String]+ iI
    String tT
    String historyHistoryId
  }
  command <<<
    get \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(historyHistoryId) then ("--history-id " +  '"' + historyHistoryId + '"') else ""}
  >>>
}