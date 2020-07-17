version 1.0

task StagGrep.pl {
  input {
    String node
    File file
  }
  command <<<
    stag-grep.pl \
      ~{node} \
      ~{file}
  >>>
  parameter_meta {
    node: "the name of the node/element we are filtering on"
    file: "the file to be parser. If no parser option is supplied, this is assumed to a be a stag compatible syntax (xml, sxpr or itext); otherwise you should parse in a parser name or a parser module that throws stag events"
  }
}