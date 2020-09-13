version 1.0

task Stagparsepl {
  input {
    Boolean? parser_formatformat_one
    Boolean? writer_formatformat_one
    File? writer_will_use
    File? errf_filefile_store
    String? err_handler
    Boolean? root_nodenameif_specified
    Boolean? color
  }
  command <<<
    stag_parse_pl \
      ~{if (parser_formatformat_one) then "-p" else ""} \
      ~{if (writer_formatformat_one) then "-w" else ""} \
      ~{if (writer_will_use) then "-o" else ""} \
      ~{if (errf_filefile_store) then "-e" else ""} \
      ~{if defined(err_handler) then ("-errhandler " +  '"' + err_handler + '"') else ""} \
      ~{if (root_nodenameif_specified) then "-r" else ""} \
      ~{if (color) then "-color" else ""}
  >>>
  parameter_meta {
    parser_formatformat_one: "|parser FORMAT\\nFORMAT is one of xml, sxpr or itext, or the name of a perl module\\nthis is the class that parsers the input file(s) and generates stag\\nevents\\nxml assumed as default"
    writer_formatformat_one: "|writer FORMAT\\nFORMAT is one of xml, sxpr or itext, or the name of a perl module\\nthis is the class that catches the events thrown by the parser; it\\ncan be any class, but the class is typically a writer\\nxml assumed as default"
    writer_will_use: "|out FILE\\nthe writer will use this file (defaults to STDOUT)"
    errf_filefile_store: "|errf FILE\\nfile to store parse error handler output"
    err_handler: "FORMAT is one of xml, sxpr or itext, or the name of a perl module\\nall parse error events go to this module"
    root_nodenameif_specified: "|root NODE_NAME\\nif this is specified, NODE_NAME becomes the root of the stag tree,\\nand anything that was previously the root is placed below this.\\nthis happens automatically if more than one file is parsed (because\\nthere can only be one tree root)"
    color: "Works only if the output handler is able to provide ASCII-colors\\n(currently supported for itext and xml)"
  }
  output {
    File out_stdout = stdout()
    File out_writer_will_use = "${in_writer_will_use}"
    File out_errf_filefile_store = "${in_errf_filefile_store}"
  }
}