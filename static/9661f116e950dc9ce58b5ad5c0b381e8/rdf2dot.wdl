version 1.0

task Rdf2dot {
  input {
    String? parser_use_given
  }
  command <<<
    rdf2dot \
      ~{if defined(parser_use_given) then ("-f " +  '"' + parser_use_given + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    parser_use_given: "parser to use, if not given,"
  }
  output {
    File out_stdout = stdout()
  }
}