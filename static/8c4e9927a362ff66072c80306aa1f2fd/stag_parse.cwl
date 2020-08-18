class: CommandLineTool
id: ../../../stag_parse.pl.cwl
inputs:
- id: parser_format_format
  doc: '|parser FORMAT FORMAT is one of xml, sxpr or itext, or the name of a perl
    module this is the class that parsers the input file(s) and generates stag events
    xml assumed as default'
  type: boolean
  inputBinding:
    prefix: -p
- id: writer_format_format
  doc: '|writer FORMAT FORMAT is one of xml, sxpr or itext, or the name of a perl
    module this is the class that catches the events thrown by the parser; it can
    be any class, but the class is typically a writer xml assumed as default'
  type: boolean
  inputBinding:
    prefix: -w
- id: file_writer_use
  doc: '|out FILE the writer will use this file (defaults to STDOUT)'
  type: boolean
  inputBinding:
    prefix: -o
- id: errf_file_file
  doc: '|errf FILE file to store parse error handler output'
  type: boolean
  inputBinding:
    prefix: -e
- id: err_handler
  doc: FORMAT is one of xml, sxpr or itext, or the name of a perl module all parse
    error events go to this module
  type: string
  inputBinding:
    prefix: -errhandler
- id: root_nodename_specified
  doc: '|root NODE_NAME if this is specified, NODE_NAME becomes the root of the stag
    tree, and anything that was previously the root is placed below this. this happens
    automatically if more than one file is parsed (because there can only be one tree
    root)'
  type: boolean
  inputBinding:
    prefix: -r
- id: color
  doc: Works only if the output handler is able to provide ASCII-colors (currently
    supported for itext and xml)
  type: boolean
  inputBinding:
    prefix: -color
outputs: []
cwlVersion: v1.1
baseCommand:
- stag-parse.pl
