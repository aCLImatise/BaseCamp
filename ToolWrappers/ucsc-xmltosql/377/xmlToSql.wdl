version 1.0

task XmlToSql {
  input {
    String? prefix
    String? text_field
    Int? max_promote_size
    String in_dot_xml
    String in_dot_dtd
    String in_dot_stats
  }
  command <<<
    xmlToSql \
      ~{in_dot_xml} \
      ~{in_dot_dtd} \
      ~{in_dot_stats} \
      ~{if defined(prefix) then ("-prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(text_field) then ("-textField " +  '"' + text_field + '"') else ""} \
      ~{if defined(max_promote_size) then ("-maxPromoteSize " +  '"' + max_promote_size + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    prefix: "- A name to prefix all tables with"
    text_field: "- Name to use for text field (default 'text')"
    max_promote_size: "- Maximum size (default 32) for a element that\\njust defines a string to be promoted to a field\\nin parent table\\n"
    in_dot_xml: ""
    in_dot_dtd: ""
    in_dot_stats: ""
  }
  output {
    File out_stdout = stdout()
  }
}