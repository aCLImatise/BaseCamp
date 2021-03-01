version 1.0

task FilterPsmsrb {
  input {
    File? explicitly_named_output
    Boolean? debug
    String? attribute
    Boolean? check_alternatives
    Boolean? reject
    String expression
    File file_dot_pep_xml
  }
  command <<<
    filter_psms_rb \
      ~{expression} \
      ~{file_dot_pep_xml} \
      ~{if defined(explicitly_named_output) then ("--output " +  '"' + explicitly_named_output + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(attribute) then ("--attribute " +  '"' + attribute + '"') else ""} \
      ~{if (check_alternatives) then "--check-alternatives" else ""} \
      ~{if (reject) then "--reject" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    explicitly_named_output: "An explicitly named output file."
    debug: "Run in debug mode [false]"
    attribute: "Match expression against a specific search_hit attribute [protein]"
    check_alternatives: "Also match expression against to alternative_proteins [false]"
    reject: "Keep mismatches instead of matches [false]"
    expression: ""
    file_dot_pep_xml: ""
  }
  output {
    File out_stdout = stdout()
    File out_explicitly_named_output = "${in_explicitly_named_output}"
  }
}