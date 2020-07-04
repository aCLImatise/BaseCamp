version 1.0

task StagFilter.pl {
  input {
    String node
    File file
  }
  command <<<
    stag-filter.pl \
      ~{node} \
      ~{file}
  >>>
  parameter_meta {
    node: "the name of the node/element we are filtering on"
    file: "the file to be parser. If no parser option is supplied, this is assumed to a be a stag compatible syntax (xml, sxpr or itext); otherwise you should parse in a parser name or a parser module that throws stag events"
  }
}