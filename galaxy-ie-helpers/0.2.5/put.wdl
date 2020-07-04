version 1.0

task Put {
  input {
    Array[File] file_path
    File? file_type
    String? history_id
  }
  command <<<
    put \
      ~{if defined(file_path) then ("--filepath " +  '"' + file_path + '"') else ""} \
      ~{if defined(file_type) then ("--filetype " +  '"' + file_type + '"') else ""} \
      ~{if defined(history_id) then ("--history-id " +  '"' + history_id + '"') else ""}
  >>>
  parameter_meta {
    file_path: "Specify the path to the files that should be uploaded to Galaxy."
    file_type: "Galaxy file format. If not specified Galaxy will try to guess the filetype automatically."
    history_id: "History ID. The history ID and the dataset ID uniquly identify a dataset. Per default this is set to the current Galaxy history."
  }
}