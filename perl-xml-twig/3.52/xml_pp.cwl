class: CommandLineTool
id: xml_pp.cwl
inputs:
- id: i
  doc: "[<extension>] edits the file(s) in place, if an extension is provided (no\
    \ space between \"-i\" and the extension) then the original file is backed-up\
    \ with that extension The rules for the extension are the same as Perl's (see\
    \ perldoc perlrun): if the extension includes no \"*\" then it is appended to\
    \ the original file name, If the extension does contain one or more \"*\" characters,\
    \ then each \"*\" is replaced with the current filename."
  type: boolean
  inputBinding:
    prefix: -i
- id: s
  doc: "the style to use for pretty printing: none, nsgmls, nice, indented, record,\
    \ or record_c (see XML::Twig docs for the exact description of those styles),\
    \ 'indented' by default"
  type: string
  inputBinding:
    prefix: -s
- id: p
  doc: <tag(s)> preserves white spaces in tags. You can use several "-p" options or
    quote the tags if you need more than one
  type: boolean
  inputBinding:
    prefix: -p
- id: e
  doc: use XML::Twig output_encoding (based on Text::Iconv or Unicode::Map8 and Unicode::String)
    to set the output encoding. By default the original encoding is preserved. If
    this option is used the XML declaration is updated (and created if there was none).
    Make sure that the encoding is supported by the parser you use if you want to
    be able to process the pretty_printed file (XML::Parser does not support 'latin1'
    for example, you have to use 'iso-8859-1')
  type: string
  inputBinding:
    prefix: -e
- id: l
  doc: loads the documents in memory instead of outputting them as they are being
    parsed. This prevents a bug (see BUGS) but uses more memory
  type: boolean
  inputBinding:
    prefix: -l
- id: f
  doc: read the list of files to process from <file>, one per line
  type: File
  inputBinding:
    prefix: -f
- id: v
  doc: verbose (list the current file being processed)
  type: boolean
  inputBinding:
    prefix: -v
- id: stop
  doc: processing (to process files that start with -)
  type: string
  inputBinding:
    prefix: --  stop
outputs: []
cwlVersion: v1.1
baseCommand:
- xml_pp
