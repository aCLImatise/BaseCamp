version 1.0

task MzidToProtxmlrb {
  input {
    File? explicitly_named_output
    Boolean? debug
    Float? min_prob
    Int file_one_dot_mz_id
  }
  command <<<
    mzid_to_protxml_rb \
      ~{file_one_dot_mz_id} \
      ~{if defined(explicitly_named_output) then ("--output " +  '"' + explicitly_named_output + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(min_prob) then ("--minprob " +  '"' + min_prob + '"') else ""}
  >>>
  parameter_meta {
    explicitly_named_output: "An explicitly named output file."
    debug: "Run in debug mode [false]"
    min_prob: "Minimum probability for protein to be included in the output [0.05]"
    file_one_dot_mz_id: ""
  }
  output {
    File out_stdout = stdout()
    File out_explicitly_named_output = "${in_explicitly_named_output}"
  }
}