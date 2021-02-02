version 1.0

task MzidToPepxmlrb {
  input {
    File? explicitly_named_output
    Boolean? debug
    Int file_one_dot_mz_id
  }
  command <<<
    mzid_to_pepxml_rb \
      ~{file_one_dot_mz_id} \
      ~{if defined(explicitly_named_output) then ("--output " +  '"' + explicitly_named_output + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    explicitly_named_output: "An explicitly named output file."
    debug: "Run in debug mode [false]"
    file_one_dot_mz_id: ""
  }
  output {
    File out_stdout = stdout()
    File out_explicitly_named_output = "${in_explicitly_named_output}"
  }
}