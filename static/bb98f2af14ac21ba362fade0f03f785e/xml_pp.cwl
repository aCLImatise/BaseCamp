class: CommandLineTool
id: xml_pp.cwl
inputs:
- id: in_edits_files_provided
  doc: "[<extension>]\nedits the file(s) in place, if an extension is provided (no\
    \ space\nbetween \"-i\" and the extension) then the original file is backed-up\n\
    with that extension\nThe rules for the extension are the same as Perl's (see perldoc\n\
    perlrun): if the extension includes no \"*\" then it is appended to\nthe original\
    \ file name, If the extension does contain one or more\n\"*\" characters, then\
    \ each \"*\" is replaced with the current filename."
  type: boolean
  inputBinding:
    prefix: -i
- id: in_style_use_pretty
  doc: "the style to use for pretty printing: none, nsgmls, nice, indented,\nrecord,\
    \ or record_c (see XML::Twig docs for the exact description of\nthose styles),\
    \ 'indented' by default"
  type: string
  inputBinding:
    prefix: -s
- id: in_tagspreserves_white_spaces
  doc: "<tag(s)>\npreserves white spaces in tags. You can use several \"-p\" options\
    \ or\nquote the tags if you need more than one"
  type: boolean
  inputBinding:
    prefix: -p
- id: in_use_xmltwig_outputencoding
  doc: "use XML::Twig output_encoding (based on Text::Iconv or Unicode::Map8\nand\
    \ Unicode::String) to set the output encoding. By default the\noriginal encoding\
    \ is preserved.\nIf this option is used the XML declaration is updated (and created\n\
    if there was none).\nMake sure that the encoding is supported by the parser you\
    \ use if\nyou want to be able to process the pretty_printed file (XML::Parser\n\
    does not support 'latin1' for example, you have to use 'iso-8859-1')"
  type: File
  inputBinding:
    prefix: -e
- id: in_loads_documents_memory
  doc: "loads the documents in memory instead of outputting them as they are\nbeing\
    \ parsed.\nThis prevents a bug (see BUGS) but uses more memory"
  type: boolean
  inputBinding:
    prefix: -l
- id: in_read_list_process
  doc: read the list of files to process from <file>, one per line
  type: File
  inputBinding:
    prefix: -f
- id: in_verbose_list_processed
  doc: verbose (list the current file being processed)
  type: boolean
  inputBinding:
    prefix: -v
- id: in_twig
  doc: OPTIONS
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_use_xmltwig_outputencoding
  doc: "use XML::Twig output_encoding (based on Text::Iconv or Unicode::Map8\nand\
    \ Unicode::String) to set the output encoding. By default the\noriginal encoding\
    \ is preserved.\nIf this option is used the XML declaration is updated (and created\n\
    if there was none).\nMake sure that the encoding is supported by the parser you\
    \ use if\nyou want to be able to process the pretty_printed file (XML::Parser\n\
    does not support 'latin1' for example, you have to use 'iso-8859-1')"
  type: File
  outputBinding:
    glob: $(inputs.in_use_xmltwig_outputencoding)
cwlVersion: v1.1
baseCommand:
- xml_pp
