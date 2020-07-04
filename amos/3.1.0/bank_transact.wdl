version 1.0

task BankTransact {
  input {
    File? directory_path_open
    Boolean? create_new_directory
    Boolean? forcibly_create_bank
    File? file_path_input
    Boolean? compress_sequence_values
    Boolean? display_compatible_version
    String bank_transact
  }
  command <<<
    bank-transact \
      ~{bank_transact} \
      ~{if defined(directory_path_open) then ("-b " +  '"' + directory_path_open + '"') else ""} \
      ~{true="-c" false="" create_new_directory} \
      ~{true="-f" false="" forcibly_create_bank} \
      ~{if defined(file_path_input) then ("-m " +  '"' + file_path_input + '"') else ""} \
      ~{true="-z" false="" compress_sequence_values} \
      ~{true="-v" false="" display_compatible_version}
  >>>
  parameter_meta {
    directory_path_open: "The directory path of the banks to open or create"
    create_new_directory: "Create new bank directory if path does not exist"
    forcibly_create_bank: "Forcibly create new bank by destroying existing"
    file_path_input: "The file path of the input message"
    compress_sequence_values: "Compress sequence and quality values for SEQ and RED (only allows [ACGTN] sequence and [0,63] quality)"
    display_compatible_version: "Display the compatible bank version"
    bank_transact: "[options]  -b <bank path> -m <message path>"
  }
}