version 1.0

task Get {
  input {
    Array[String] id
    String? identifier_type
    String? history_id
  }
  command <<<
    get \
      ~{if defined(id) then ("--id " +  '"' + id + '"') else ""} \
      ~{if defined(identifier_type) then ("--identifier_type " +  '"' + identifier_type + '"') else ""} \
      ~{if defined(history_id) then ("--history-id " +  '"' + history_id + '"') else ""}
  >>>
  parameter_meta {
    id: "The dataset ID/name from your Galaxy history, or a regex pattern to search all files in the history"
    identifier_type: "Type of the argument File/ID Number. Per default, integer ID number. If a pattern is specified in the -i argument, then this argument should be set to \"regex\""
    history_id: "History ID. The history ID and the dataset ID uniquly identify a dataset. Per default this is set to the current Galaxy history."
  }
}