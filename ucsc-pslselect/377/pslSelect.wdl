version 1.0

task PslSelect {
  input {
    File? qt_start
    String? q_delim
    String in_psl
    String out_psl
  }
  command <<<
    pslSelect \
      ~{in_psl} \
      ~{out_psl} \
      ~{if defined(qt_start) then ("-qtStart " +  '"' + qt_start + '"') else ""} \
      ~{if defined(q_delim) then ("-qDelim " +  '"' + q_delim + '"') else ""}
  >>>
  parameter_meta {
    qt_start: "- file is tab-separate rows of qName,tName,tStart"
    q_delim: "- use only the part of the query name before this character"
    in_psl: ""
    out_psl: ""
  }
}