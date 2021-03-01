class: CommandLineTool
id: pslSelect.cwl
inputs:
- id: in_qt_pairs
  doc: '- file is tab-separated qName and tName pairs to select'
  type: File?
  inputBinding:
    prefix: -qtPairs
- id: in_qpass
  doc: "- pass all PSLs with queries that do not appear in qtPairs file at all\n(default\
    \ is to remove all PSLs for queries that are not in file)"
  type: boolean?
  inputBinding:
    prefix: -qPass
- id: in_queries
  doc: '- file has qNames to select'
  type: File?
  inputBinding:
    prefix: -queries
- id: in_query_pairs
  doc: "- file is tab-separated pairs of qNames to select\nwith new qName to substitute\
    \ in output file"
  type: File?
  inputBinding:
    prefix: -queryPairs
- id: in_qt_start
  doc: '- file is tab-separate rows of qName,tName,tStart'
  type: File?
  inputBinding:
    prefix: -qtStart
- id: in_q_delim
  doc: '- use only the part of the query name before this character'
  type: string?
  inputBinding:
    prefix: -qDelim
- id: in_in_psl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_query_pairs
  doc: "- file is tab-separated pairs of qNames to select\nwith new qName to substitute\
    \ in output file"
  type: File?
  outputBinding:
    glob: $(inputs.in_query_pairs)
hints: []
cwlVersion: v1.1
baseCommand:
- pslSelect
