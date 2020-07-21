class: CommandLineTool
id: ../../../sqlToXml.cwl
inputs:
- id: tab
  doc: "- number of spaces betweeen tabs in xml.dumpSpec - by default it's 8. (It\
    \ may be best just to avoid tabs in that file though.)"
  type: string
  inputBinding:
    prefix: -tab
- id: max_list
  doc: '- This will limit any lists in the output to no more than size N.  This is
    mostly just for testing.'
  type: string
  inputBinding:
    prefix: -maxList
- id: database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: dump_spec_do_tod
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_dot_xml
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- sqlToXml
