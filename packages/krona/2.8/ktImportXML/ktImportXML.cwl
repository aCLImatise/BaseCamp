class: CommandLineTool
id: ktImportXML.cwl
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/krona:2.8--pl526_0
cwlVersion: v1.1
baseCommand:
- ktImportXML
