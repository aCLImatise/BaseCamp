class: CommandLineTool
id: ../../../ktImportXML.cwl
inputs:
- id: in_xml_file
  doc: "A file containing XML tags that specify chart attributes and\ndescribe the\
    \ node hierarchy. An XML header is not necessary. For a\ncomplete description\
    \ of XML tags, see:\nhttps://sourceforge.net/p/krona/wiki/KronaTools/\n_________"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ktImportXML
