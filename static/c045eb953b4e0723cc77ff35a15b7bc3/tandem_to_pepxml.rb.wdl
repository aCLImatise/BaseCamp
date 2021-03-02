version 1.0

task TandemToPepxmlrb {
  input {
    String? output_prefix
    File? replace_output
    File? explicitly_named_output
    Int file_two_dot_dat
  }
  command <<<
    tandem_to_pepxml_rb \
      ~{file_two_dot_dat} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if (replace_output) then "--replace-output" else ""} \
      ~{if defined(explicitly_named_output) then ("--output " +  '"' + explicitly_named_output + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_prefix: "A string to prepend to the name of output files"
    replace_output: "Dont skip analyses for which the output file already exists [false]"
    explicitly_named_output: "An explicitly named output file."
    file_two_dot_dat: ""
  }
  output {
    File out_stdout = stdout()
    File out_replace_output = "${in_replace_output}"
    File out_explicitly_named_output = "${in_explicitly_named_output}"
  }
}