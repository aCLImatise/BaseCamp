class: CommandLineTool
id: sqlToXml.cwl
inputs:
- id: in_top_tag
  doc: "- Give the top level XML tag the given name.  By\ndefault it will be the same\
    \ as the database name."
  type: string?
  inputBinding:
    prefix: -topTag
- id: in_query
  doc: "- Instead of dumping whole database, just dump those\nrecords matching SQL\
    \ select statement in file.sql.\nThis statement should be of the form:\nselect\
    \ * from table where ...\nor\nselect table.* from table,otherTables where ...\n\
    Where the table is the same as the table in the first\nline of dumpSpec."
  type: File?
  inputBinding:
    prefix: -query
- id: in_tab
  doc: "- number of spaces betweeen tabs in xml.dumpSpec - by default it's 8.\n(It\
    \ may be best just to avoid tabs in that file though.)"
  type: long?
  inputBinding:
    prefix: -tab
- id: in_max_list
  doc: "- This will limit any lists in the output to no more than\nsize N.  This is\
    \ mostly just for testing.\n"
  type: long?
  inputBinding:
    prefix: -maxList
- id: in_database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dump_spec_do_tod
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sqlToXml
