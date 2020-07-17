version 1.0

task StagAutoschema.pl {
  input {
    Boolean? parser_format_format
    Boolean? dtd
    Boolean? writer_format_format
  }
  command <<<
    stag-autoschema.pl \
      ~{true="-p" false="" parser_format_format} \
      ~{true="-dtd" false="" dtd} \
      ~{true="-w" false="" writer_format_format}
  >>>
  parameter_meta {
    parser_format_format: "|parser FORMAT FORMAT is one of xml, sxpr or itext, or the name of a perl module xml assumed as default"
    dtd: "exports schema as DTD"
    writer_format_format: "|writer FORMAT FORMAT is one of xml, sxpr or itext, or the name of a perl module, OR DTD The default is sxpr note that stag schemas exported as xml will be invalid xml, due to the use of symbols *, +, ? in the node names"
  }
}