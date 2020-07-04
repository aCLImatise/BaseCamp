version 1.0

task StagParse.pl {
  input {
    Boolean? parser_format_format
    Boolean? writer_format_format
    Boolean? file_writer_use
    Boolean? errf_file_file
    String? err_handler
    Boolean? root_nodename_specified
    Boolean? color
  }
  command <<<
    stag-parse.pl \
      ~{true="-p" false="" parser_format_format} \
      ~{true="-w" false="" writer_format_format} \
      ~{true="-o" false="" file_writer_use} \
      ~{true="-e" false="" errf_file_file} \
      ~{if defined(err_handler) then ("-errhandler " +  '"' + err_handler + '"') else ""} \
      ~{true="-r" false="" root_nodename_specified} \
      ~{true="-color" false="" color}
  >>>
  parameter_meta {
    parser_format_format: "|parser FORMAT FORMAT is one of xml, sxpr or itext, or the name of a perl module this is the class that parsers the input file(s) and generates stag events xml assumed as default"
    writer_format_format: "|writer FORMAT FORMAT is one of xml, sxpr or itext, or the name of a perl module this is the class that catches the events thrown by the parser; it can be any class, but the class is typically a writer xml assumed as default"
    file_writer_use: "|out FILE the writer will use this file (defaults to STDOUT)"
    errf_file_file: "|errf FILE file to store parse error handler output"
    err_handler: "FORMAT is one of xml, sxpr or itext, or the name of a perl module all parse error events go to this module"
    root_nodename_specified: "|root NODE_NAME if this is specified, NODE_NAME becomes the root of the stag tree, and anything that was previously the root is placed below this. this happens automatically if more than one file is parsed (because there can only be one tree root)"
    color: "Works only if the output handler is able to provide ASCII-colors (currently supported for itext and xml)"
  }
}