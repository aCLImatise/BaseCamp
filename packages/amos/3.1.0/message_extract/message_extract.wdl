version 1.0

task Messageextract {
  input {
    File? file_path_input
    Boolean? invert_match_filter
    String? n_codes
  }
  command <<<
    message_extract \
      ~{n_codes} \
      ~{if defined(file_path_input) then ("-m " +  '"' + file_path_input + '"') else ""} \
      ~{if (invert_match_filter) then "-v" else ""}
  >>>
  parameter_meta {
    file_path_input: "The file path of the input message"
    invert_match_filter: "Invert match. Filter instead of extract given NCodes"
    n_codes: ""
  }
  output {
    File out_stdout = stdout()
  }
}