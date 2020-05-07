class: CommandLineTool
id: ktImportXML.cwl
inputs:
- id: xml_file
  doc: 'A file containing XML tags that specify chart attributes and describe the
    node hierarchy. An XML header is not necessary. For a complete description of
    XML tags, see: https://sourceforge.net/p/krona/wiki/KronaTools/ _________'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ktImportXML
