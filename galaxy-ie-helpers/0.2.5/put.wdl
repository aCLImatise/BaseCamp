version 1.0

task Put {
  input {
    Array[File]+ fileFilePath
    File fileFileType
    String historyHistoryId
  }
  command <<<
    put \
      ~{if defined(fileFilePath) then ("--filepath " +  '"' + fileFilePath + '"') else ""} \
      ~{if defined(fileFileType) then ("--filetype " +  '"' + fileFileType + '"') else ""} \
      ~{if defined(historyHistoryId) then ("--history-id " +  '"' + historyHistoryId + '"') else ""}
  >>>
}