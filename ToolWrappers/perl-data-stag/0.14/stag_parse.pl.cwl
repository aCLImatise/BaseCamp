class: CommandLineTool
id: stag_parse.pl.cwl
inputs:
- id: in_parser_formatformat_one
  doc: "|parser FORMAT\nFORMAT is one of xml, sxpr or itext, or the name of a perl\
    \ module\nthis is the class that parsers the input file(s) and generates stag\n\
    events\nxml assumed as default"
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_writer_formatformat_one
  doc: "|writer FORMAT\nFORMAT is one of xml, sxpr or itext, or the name of a perl\
    \ module\nthis is the class that catches the events thrown by the parser; it\n\
    can be any class, but the class is typically a writer\nxml assumed as default"
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_writer_use_defaults
  doc: "|out FILE\nthe writer will use this file (defaults to STDOUT)"
  type: File?
  inputBinding:
    prefix: -o
- id: in_errf_filefile_store
  doc: "|errf FILE\nfile to store parse error handler output"
  type: File?
  inputBinding:
    prefix: -e
- id: in_err_handler
  doc: "/MODULE\nFORMAT is one of xml, sxpr or itext, or the name of a perl module\n\
    all parse error events go to this module"
  type: string?
  inputBinding:
    prefix: -errhandler
- id: in_root_nodenameif_specified
  doc: "|root NODE_NAME\nif this is specified, NODE_NAME becomes the root of the stag\
    \ tree,\nand anything that was previously the root is placed below this.\nthis\
    \ happens automatically if more than one file is parsed (because\nthere can only\
    \ be one tree root)"
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_color
  doc: "Works only if the output handler is able to provide ASCII-colors\n(currently\
    \ supported for itext and xml)"
  type: boolean?
  inputBinding:
    prefix: -color
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_writer_use_defaults
  doc: "|out FILE\nthe writer will use this file (defaults to STDOUT)"
  type: File?
  outputBinding:
    glob: $(inputs.in_writer_use_defaults)
- id: out_errf_filefile_store
  doc: "|errf FILE\nfile to store parse error handler output"
  type: File?
  outputBinding:
    glob: $(inputs.in_errf_filefile_store)
hints: []
cwlVersion: v1.1
baseCommand:
- stag-parse.pl
