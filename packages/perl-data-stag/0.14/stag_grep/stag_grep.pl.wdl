version 1.0

task Staggreppl {
  input {
    Boolean? parser_formatformat_one
    Boolean? writer_formatformat_one
    Boolean? countprints_number_pass
    Boolean? filter_file
    Boolean? query_tagval_qquery
    String subroutine_dot
    String display
    File file
  }
  command <<<
    stag_grep_pl \
      ~{subroutine_dot} \
      ~{display} \
      ~{file} \
      ~{if (parser_formatformat_one) then "-p" else ""} \
      ~{if (writer_formatformat_one) then "-w" else ""} \
      ~{if (countprints_number_pass) then "-c" else ""} \
      ~{if (filter_file) then "-filterfile" else ""} \
      ~{if (query_tagval_qquery) then "-q" else ""}
  >>>
  parameter_meta {
    parser_formatformat_one: "|parser FORMAT\\nFORMAT is one of xml, sxpr or itext, or the name of a perl module\\nxml assumed as default"
    writer_formatformat_one: "|writer FORMAT\\nFORMAT is one of xml, sxpr or itext, or the name of a perl module"
    countprints_number_pass: "|count\\nprints the number of nodes that pass the test"
    filter_file: "|f\\na file containing a perl subroutine (in place of the SUB argument)"
    query_tagval_qquery: "|query TAG1=VAL1 -q|query TAG2=VAL2 ... -q|query TAGN=VALN\\nfilters based on the field TAG\\nother operators can be used too - eg <, <=, etc\\nmultiple q arguments can be passed in\\nfor more complex operations, pass in your own subroutine, see below"
    subroutine_dot: "if the subroutine passes, the node will be passed to the writer for"
    display: "NODE"
    file: "the file to be parser. If no parser option is supplied, this is\\nassumed to a be a stag compatible syntax (xml, sxpr or itext);\\notherwise you should parse in a parser name or a parser module that\\nthrows stag events"
  }
  output {
    File out_stdout = stdout()
  }
}