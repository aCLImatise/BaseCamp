version 1.0

task AddRetentionTimesrb {
  input {
    File? replace_output
    File? explicitly_named_output
    Int file_one_dot_pep_dot_xml
    Int file_two_do_tmgf
  }
  command <<<
    add_retention_times_rb \
      ~{file_one_dot_pep_dot_xml} \
      ~{file_two_do_tmgf} \
      ~{if (replace_output) then "--replace-output" else ""} \
      ~{if defined(explicitly_named_output) then ("--output " +  '"' + explicitly_named_output + '"') else ""}
  >>>
  parameter_meta {
    replace_output: "Dont skip analyses for which the output file already exists [false]"
    explicitly_named_output: "An explicitly named output file."
    file_one_dot_pep_dot_xml: ""
    file_two_do_tmgf: ""
  }
  output {
    File out_stdout = stdout()
    File out_replace_output = "${in_replace_output}"
    File out_explicitly_named_output = "${in_explicitly_named_output}"
  }
}