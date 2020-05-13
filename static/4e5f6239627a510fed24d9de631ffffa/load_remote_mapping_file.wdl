version 1.0

task LoadRemoteMappingFile.py {
  input {
    String spreadsheetSpreadsheetKey
    String outputOutputFp
  }
  command <<<
    load_remote_mapping_file.py \
      ~{if defined(spreadsheetSpreadsheetKey) then ("--spreadsheet_key " +  '"' + spreadsheetSpreadsheetKey + '"') else ""} \
      ~{if defined(outputOutputFp) then ("--output_fp " +  '"' + outputOutputFp + '"') else ""}
  >>>
}