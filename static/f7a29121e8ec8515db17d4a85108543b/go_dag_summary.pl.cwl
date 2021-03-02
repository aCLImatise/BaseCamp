class: CommandLineTool
id: go_dag_summary.pl.cwl
inputs:
- id: in_writes_parse_errors
  doc: "writes parse errors in XML - defaults to STDERR (there should be no\nparse\
    \ errors in well formed files)"
  type: string?
  inputBinding:
    prefix: -e
- id: in_determines_parser_use
  doc: "determines which parser to use; if left unspecified, will make a guess\nbased\
    \ on file suffix. See below for formats"
  type: File?
  inputBinding:
    prefix: -p
- id: in_use_cache
  doc: "If this switch is specified, then caching mode is turned on.\nWith caching\
    \ mode, the first time you parse a file, then an additional\nfile will be exported\
    \ in a special format that is fast to parse. This\nfile will have the same filename\
    \ as the original file, except it will\nhave the \".cache\" suffix.\nThe next\
    \ time you parse the file, this program will automatically check\nfor the existence\
    \ of the \".cache\" file. If it exists, and is more recent\nthan the file you\
    \ specified, this is parsed instead. If it does not\nexist, it is rebuilt."
  type: boolean?
  inputBinding:
    prefix: -use_cache
- id: in_go_dag_summary
  doc: "SYNOPSIS\ngo-dag-summary ontology/gene_ontology.obo"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- go-dag-summary.pl
