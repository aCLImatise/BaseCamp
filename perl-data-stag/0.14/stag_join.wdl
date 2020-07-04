version 1.0

task StagJoin.pl {
  input {
    Boolean? parser_format_format
    Boolean? writer_format_format
  }
  command <<<
    stag-join.pl \
      ~{true="-p" false="" parser_format_format} \
      ~{true="-w" false="" writer_format_format}
  >>>
  parameter_meta {
    parser_format_format: "|parser FORMAT FORMAT is one of xml, sxpr or itext, or the name of a perl module xml assumed as default"
    writer_format_format: "|writer FORMAT FORMAT is one of xml, sxpr or itext, or the name of a perl module"
  }
}