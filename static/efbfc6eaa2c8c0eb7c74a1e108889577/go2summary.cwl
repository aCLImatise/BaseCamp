class: CommandLineTool
id: go2summary.cwl
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
- id: in_writer_formatformat_see
  doc: "|writer FORMAT\nformat for output - see below for list"
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_use_cache
  doc: "If this switch is specified, then caching mode is turned on.\nWith caching\
    \ mode, the first time you parse a file, then an additional\nfile will be exported\
    \ in a special format that is fast to parse. This\nfile will have the same filename\
    \ as the original file, except it will\nhave the \".cache\" suffix.\nThe next\
    \ time you parse the file, this program will automatically check\nfor the existence\
    \ of the \".cache\" file. If it exists, and is more recent\nthan the file you\
    \ specified, this is parsed instead. If it does not\nexist, it is rebuilt.\nThis\
    \ will bring a speed improvement for b<some> of the output formats\nbelow (such\
    \ as pathlist). Most output formats work with event-based\nparsing, so caching\
    \ the object brings no benefit and will in fact be\nslower than bypassing the\
    \ cache"
  type: File?
  inputBinding:
    prefix: -use_cache
- id: in_format
  doc: ARGUMENTS
  type: string
  inputBinding:
    position: 0
- id: in_formats
  doc: writable formats are
  type: string
  inputBinding:
    position: 0
- id: in_go_ont
  doc: "Files with suffix \".ontology\"\nThese store the ontology DAGs"
  type: string
  inputBinding:
    position: 1
- id: in_go_def
  doc: Files with suffix ".defs"
  type: string
  inputBinding:
    position: 2
- id: in_go_xref
  doc: "External database references for GO terms\nFiles with suffix \"2go\" (eg ec2go,\
    \ metacyc2go)"
  type: string
  inputBinding:
    position: 3
- id: in_go_assoc
  doc: "Annotations of genes or gene products using GO\nFiles with prefix \"gene-association.\""
  type: string
  inputBinding:
    position: 4
- id: in_obo_text
  doc: "Files with suffix \".obo\"\nThis is a new file format replacement for the\
    \ existing GO flat file\nformats. It handles ontologies, definitions and xrefs\
    \ (but not\nassociations)"
  type: string
  inputBinding:
    position: 5
- id: in_obo_xml
  doc: "Files with suffix \".obo.xml\" or \".obo-xml\"\nThis is the XML version of\
    \ the OBO flat file format above"
  type: string
  inputBinding:
    position: 6
- id: in_prolog
  doc: "prolog facts - you will need a prolog compiler/interpreter to use\nthese.\
    \ You can reason over these facts using Obol or the forthcoming\nBio-LP project"
  type: string
  inputBinding:
    position: 7
- id: in_summary
  doc: can be used on both ontology files and association files
  type: string
  inputBinding:
    position: 0
- id: in_path_list
  doc: shows all paths to the root
  type: string
  inputBinding:
    position: 1
- id: in_obj_yaml
  doc: a YAML representation of a GO::Model::Graph object
  type: string
  inputBinding:
    position: 0
- id: in_obj_storable
  doc: "A dump of the perl GO::Model::Graph object. You need Storable from\nCPAN for\
    \ this to work. This is intended to cache objects on the\nfilesystem, for fast\
    \ access. The obj_storable representation may not\nbe portable"
  type: string
  inputBinding:
    position: 1
- id: in_text_html
  doc: A html-ified OBO output format
  type: string
  inputBinding:
    position: 2
- id: in_god_b_pre_store
  doc: "XML that maps directly to the GODB relational schema (can then be\nloaded\
    \ using stag-storenode.pl)"
  type: string
  inputBinding:
    position: 3
- id: in_ch_adodb_pre_store
  doc: "XML that maps directly to the Chado relational schema (can then be\nloaded\
    \ using stag-storenode.pl)"
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_use_cache
  doc: "If this switch is specified, then caching mode is turned on.\nWith caching\
    \ mode, the first time you parse a file, then an additional\nfile will be exported\
    \ in a special format that is fast to parse. This\nfile will have the same filename\
    \ as the original file, except it will\nhave the \".cache\" suffix.\nThe next\
    \ time you parse the file, this program will automatically check\nfor the existence\
    \ of the \".cache\" file. If it exists, and is more recent\nthan the file you\
    \ specified, this is parsed instead. If it does not\nexist, it is rebuilt.\nThis\
    \ will bring a speed improvement for b<some> of the output formats\nbelow (such\
    \ as pathlist). Most output formats work with event-based\nparsing, so caching\
    \ the object brings no benefit and will in fact be\nslower than bypassing the\
    \ cache"
  type: File?
  outputBinding:
    glob: $(inputs.in_use_cache)
hints: []
cwlVersion: v1.1
baseCommand:
- go2summary
