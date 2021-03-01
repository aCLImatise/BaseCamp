version 1.0

task Banktransact {
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
    bank_transact \
      ~{bank_transact} \
      ~{if defined(directory_path_open) then ("-b " +  '"' + directory_path_open + '"') else ""} \
      ~{if (create_new_directory) then "-c" else ""} \
      ~{if (forcibly_create_bank) then "-f" else ""} \
      ~{if defined(file_path_input) then ("-m " +  '"' + file_path_input + '"') else ""} \
      ~{if (compress_sequence_values) then "-z" else ""} \
      ~{if (display_compatible_version) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    directory_path_open: "The directory path of the banks to open or create"
    create_new_directory: "Create new bank directory if path does not exist"
    forcibly_create_bank: "Forcibly create new bank by destroying existing"
    file_path_input: "The file path of the input message"
    compress_sequence_values: "Compress sequence and quality values for SEQ and RED\\n(only allows [ACGTN] sequence and [0,63] quality)"
    display_compatible_version: "Display the compatible bank version"
    bank_transact: "[options]  -b <bank path> -m <message path>"
  }
  output {
    File out_stdout = stdout()
  }
}