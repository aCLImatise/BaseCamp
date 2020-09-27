class: CommandLineTool
id: stag_splitter.pl.cwl
inputs:
- id: in_parser_formatformat_one
  doc: "|parser FORMAT\nFORMAT is one of xml, sxpr or itext, or the name of a perl\
    \ module\nxml assumed as default"
  type: boolean
  inputBinding:
    prefix: -p
- id: in_writer_formatformat_one
  doc: "|writer FORMAT\nFORMAT is one of xml, sxpr or itext, or the name of a perl\
    \ module"
  type: boolean
  inputBinding:
    prefix: -w
- id: in_split
  doc: "|s NODE\nnode to split on"
  type: boolean
  inputBinding:
    prefix: -split
- id: in_name
  doc: "|n NODE\nfield/element to use when naming files\nwill use surrogate IDs if\
    \ this argument not specified"
  type: boolean
  inputBinding:
    prefix: -name
- id: in_dir
  doc: "|d DIR\nwrite files to this directory\n"
  type: boolean
  inputBinding:
    prefix: -dir
- id: in_filename
  doc: "eg; if we have\n<top>\n<a>\n<b>foo</b>\n<c>yah</c>\n<d>\n<e>xxx</e>\n</d>\n\
    </a>\n<a>\n<b>bar</b>\n<d>\n<e>wibble</e>\n</d>\n</a>\n</top>"
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- stag-splitter.pl
