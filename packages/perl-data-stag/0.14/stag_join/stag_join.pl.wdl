version 1.0

task Stagjoinpl {
  input {
    Boolean? parser_formatformat_one
    Boolean? writer_formatformat_one
    File file
  }
  command <<<
    stag_join_pl \
      ~{file} \
      ~{if (parser_formatformat_one) then "-p" else ""} \
      ~{if (writer_formatformat_one) then "-w" else ""}
  >>>
  parameter_meta {
    parser_formatformat_one: "|parser FORMAT\\nFORMAT is one of xml, sxpr or itext, or the name of a perl module\\nxml assumed as default"
    writer_formatformat_one: "|writer FORMAT\\nFORMAT is one of xml, sxpr or itext, or the name of a perl module"
    file: "ARGUMENTS"
  }
  output {
    File out_stdout = stdout()
  }
}