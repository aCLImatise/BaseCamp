version 1.0

task Stagautoschemapl {
  input {
    Boolean? parser_formatformat_one
    Boolean? dtd
    Boolean? writer_formatformat_one
  }
  command <<<
    stag_autoschema_pl \
      ~{if (parser_formatformat_one) then "-p" else ""} \
      ~{if (dtd) then "-dtd" else ""} \
      ~{if (writer_formatformat_one) then "-w" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    parser_formatformat_one: "|parser FORMAT\\nFORMAT is one of xml, sxpr or itext, or the name of a perl module\\nxml assumed as default"
    dtd: "exports schema as DTD"
    writer_formatformat_one: "|writer FORMAT\\nFORMAT is one of xml, sxpr or itext, or the name of a perl module,\\nOR DTD\\nThe default is sxpr\\nnote that stag schemas exported as xml will be invalid xml, due to\\nthe use of symbols *, +, ? in the node names"
  }
  output {
    File out_stdout = stdout()
  }
}