version 1.0

task GetUserHistory {
  input {
    String historyHistoryId
  }
  command <<<
    get_user_history \
      ~{if defined(historyHistoryId) then ("--history-id " +  '"' + historyHistoryId + '"') else ""}
  >>>
}