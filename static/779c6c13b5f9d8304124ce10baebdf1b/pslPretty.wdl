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
    String pretty_dot_out
  }
  command <<<
    pslPretty \
      ~{in_dot_psl} \
      ~{target_dot_lst} \
      ~{query_dot_lst} \
      ~{pretty_dot_out} \
      ~{true="-axt" false="" axt} \
      ~{if defined(dot) then ("-dot " +  '"' + dot + '"') else ""} \
      ~{true="-long" false="" long} \
      ~{if defined(check) then ("-check " +  '"' + check + '"') else ""}
  >>>
  parameter_meta {
    axt: "Save in format like Scott Schwartz's axt format. Note gaps in both sequences are still allowed in the output, which not all axt readers will expect."
    dot: "Output a dot every N records."
    long: "Don't abbreviate long inserts."
    check: "Output alignment checks to filename."
    in_dot_psl: ""
    target_dot_lst: ""
    query_dot_lst: ""
    pretty_dot_out: ""
  }
}