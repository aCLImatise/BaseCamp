version 1.0

task GetUserHistory {
  input {
    String? history_id
  }
  command <<<
    get_user_history \
      ~{if defined(history_id) then ("--history-id " +  '"' + history_id + '"') else ""}
  >>>
  parameter_meta {
    history_id: "History ID. The history ID and the dataset ID uniquly identify a dataset. Per default this is set to the current Galaxy history."
  }
}