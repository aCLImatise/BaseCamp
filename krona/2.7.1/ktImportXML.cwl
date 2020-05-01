#!/usr/bin/env cwl-runner

baseCommand:
- ktImportXML
class: CommandLineTool
cwlVersion: v1.0
id: ktimportxml
inputs:
- doc: 'A file containing XML tags that specify chart attributes and describe the
    node hierarchy. An XML header is not necessary. For a complete description of
    XML tags, see: https://sourceforge.net/p/krona/wiki/KronaTools/ _________'
  id: xml_file
  inputBinding:
    position: 0
  type: string
