class: CommandLineTool
id: stag_db.pl.cwl
inputs:
- id: in_name_stag_node
  doc: "This is the name of the stag node (XML element) that will be stored in\nthe\
    \ index; for example, with the XML below you may want to use the node\nname person\
    \ and the unique key id\n<person_set>\n<person>\n<id>...</id>\n</person>\n<person>\n\
    <id>...</id>\n</person>\n...\n</person_set>\nThis flag should only be used when\
    \ you want to store data"
  type: string
  inputBinding:
    prefix: -r
- id: in_node_will_used
  doc: "This node will be used as the unique/primary key for the data\nThis node should\
    \ be nested directly below the node that is being stored\nin the index - if it\
    \ is more that one below, specify a path\nThis flag should only be used when you\
    \ want to store data"
  type: File
  inputBinding:
    prefix: -k
- id: in_synonym_for_k
  doc: Synonym for -k
  type: string
  inputBinding:
    prefix: -u
- id: in_can_name_stag
  doc: "This can be the name of a stag supported format (xml, sxpr, itext) - XML\n\
    is assumed by default\nIt can also be a module name - this module is used to parse\
    \ the input\nfile into a stag stream; see Data::Stag::BaseGenerator for details\
    \ on\nwriting your own parsers/event generators\nThis flag should only be used\
    \ when you want to store data"
  type: File
  inputBinding:
    prefix: -p
- id: in_fetches_relationnode_unique
  doc: "Fetches the relation/node with unique key value equal to query-id\nMultiple\
    \ arguments can be passed by specifying -q multple times\nThis flag should only\
    \ be used when you want to query data"
  type: string
  inputBinding:
    prefix: -q
- id: in_top
  doc: "If this is specified in conjunction with -q or -qf then all the query\nresult\
    \ nodes will be nested inside a node with this name (ie this\nprovides a root\
    \ for the resulting document tree)"
  type: string
  inputBinding:
    prefix: -top
- id: in_qf
  doc: "This is a file of newline-seperated IDs; this is useful for querying the\n\
    index in batch"
  type: File
  inputBinding:
    prefix: -qf
- id: in_keys
  doc: This will write a list of all primary keys in the index
  type: boolean
  inputBinding:
    prefix: -keys
- id: in_format_will_used
  doc: "This format will be used to write the data; can be any stag format (xml,\n\
    sxpr, itext) - default XML.\nCan also be a module that catches the incoming stag\
    \ event stream and\ndoes something with it (for example, this could be a module\
    \ you write\nyourself that transforms the stag events into HTML)"
  type: string
  inputBinding:
    prefix: -w
- id: in_arguments
  doc: "-i INDEXFILE\nThis file will be used as the persistent index for storage/retrieval"
  type: string
  inputBinding:
    position: 0
- id: in_stag
  doc: For more complex stag to database mapping, see DBIx::DBStag and the
  type: string
  inputBinding:
    position: 0
- id: in_scripts
  doc: stag-storenode
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- stag-db.pl
