version 1.0

task PslPretty {
  input {
    Boolean? axt
    String? dot
    Boolean? long
    File? check
    String in_dot_psl
    String target_dot_lst
    String query_dot_lst
  }
  command <<<
    pslPretty \
      ~{in_dot_psl} \
      ~{target_dot_lst} \
      ~{query_dot_lst} \
      ~{if (axt) then "-axt" else ""} \
      ~{if defined(dot) then ("-dot " +  '"' + dot + '"') else ""} \
      ~{if (long) then "-long" else ""} \
      ~{if defined(check) then ("-check " +  '"' + check + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    axt: "Save in format like Scott Schwartz's axt format.\\nNote gaps in both sequences are still allowed in the\\noutput, which not all axt readers will expect."
    dot: "Output a dot every N records."
    long: "Don't abbreviate long inserts."
    check: "Output alignment checks to filename."
    in_dot_psl: ""
    target_dot_lst: ""
    query_dot_lst: ""
  }
  output {
    File out_stdout = stdout()
    File out_check = "${in_check}"
  }
}