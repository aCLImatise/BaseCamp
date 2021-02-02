version 1.0

task ProphyleDownload {
  input {
    Directory? directory_tree_sequences
    File? log_file
    Boolean? rewrite_library_files
    Boolean? advanced_configuration_json
    String? str
  }
  command <<<
    prophyle download \
      ~{str} \
      ~{if defined(directory_tree_sequences) then ("-d " +  '"' + directory_tree_sequences + '"') else ""} \
      ~{if defined(log_file) then ("-l " +  '"' + log_file + '"') else ""} \
      ~{if (rewrite_library_files) then "-F" else ""} \
      ~{if (advanced_configuration_json) then "-c" else ""}
  >>>
  parameter_meta {
    directory_tree_sequences: "directory for the tree and the sequences [~/prophyle]"
    log_file: "log file"
    rewrite_library_files: "rewrite library files if they already exist"
    advanced_configuration_json: "[STR [STR ...]]  advanced configuration (a JSON dictionary)"
    str: ""
  }
  output {
    File out_stdout = stdout()
  }
}