version 1.0

task Stagsplitterpl {
  input {
    Boolean? parser_formatformat_one
    Boolean? writer_formatformat_one
    Boolean? split
    Boolean? name
    Boolean? dir
    File filename
  }
  command <<<
    stag_splitter_pl \
      ~{filename} \
      ~{if (parser_formatformat_one) then "-p" else ""} \
      ~{if (writer_formatformat_one) then "-w" else ""} \
      ~{if (split) then "-split" else ""} \
      ~{if (name) then "-name" else ""} \
      ~{if (dir) then "-dir" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    parser_formatformat_one: "|parser FORMAT\\nFORMAT is one of xml, sxpr or itext, or the name of a perl module\\nxml assumed as default"
    writer_formatformat_one: "|writer FORMAT\\nFORMAT is one of xml, sxpr or itext, or the name of a perl module"
    split: "|s NODE\\nnode to split on"
    name: "|n NODE\\nfield/element to use when naming files\\nwill use surrogate IDs if this argument not specified"
    dir: "|d DIR\\nwrite files to this directory\\n"
    filename: "eg; if we have\\n<top>\\n<a>\\n<b>foo</b>\\n<c>yah</c>\\n<d>\\n<e>xxx</e>\\n</d>\\n</a>\\n<a>\\n<b>bar</b>\\n<d>\\n<e>wibble</e>\\n</d>\\n</a>\\n</top>"
  }
  output {
    File out_stdout = stdout()
  }
}