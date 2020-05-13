class: CommandLineTool
id: stag_db.pl.cwl
inputs:
- id: i
  doc: This file will be used as the persistent index for storage/retrieval
  type: string
  inputBinding:
    prefix: -i
- id: r
  doc: "This is the name of the stag node (XML element) that will be stored in the\
    \ index; for example, with the XML below you may want to use the node name \e\
    [1mperson\e[0m and the unique key \e[1mid\e[0m <person_set> <person> <id>...</id>\
    \ </person> <person> <id>...</id> </person> ... </person_set> This flag should\
    \ only be used when you want to store data"
  type: string
  inputBinding:
    prefix: -r
- id: k
  doc: This node will be used as the unique/primary key for the data This node should
    be nested directly below the node that is being stored in the index - if it is
    more that one below, specify a path This flag should only be used when you want
    to store data
  type: string
  inputBinding:
    prefix: -k
- id: u
  doc: "Synonym for \e[1m-k\e[0m"
  type: string
  inputBinding:
    prefix: -u
- id: p
  doc: This can be the name of a stag supported format (xml, sxpr, itext) - XML is
    assumed by default It can also be a module name - this module is used to parse
    the input file into a stag stream; see Data::Stag::BaseGenerator for details on
    writing your own parsers/event generators This flag should only be used when you
    want to store data
  type: string
  inputBinding:
    prefix: -p
- id: q
  doc: Fetches the relation/node with unique key value equal to query-id Multiple
    arguments can be passed by specifying -q multple times This flag should only be
    used when you want to query data
  type: string
  inputBinding:
    prefix: -q
- id: top
  doc: "If this is specified in conjunction with \e[1m-q\e[0m or \e[1m-qf\e[0m then\
    \ all the query result nodes will be nested inside a node with this name (ie this\
    \ provides a root for the resulting document tree)"
  type: string
  inputBinding:
    prefix: -top
- id: qf
  doc: This is a file of newline-seperated IDs; this is useful for querying the index
    in batch
  type: string
  inputBinding:
    prefix: -qf
- id: keys
  doc: This will write a list of all primary keys in the index
  type: boolean
  inputBinding:
    prefix: -keys
- id: w
  doc: This format will be used to write the data; can be any stag format (xml, sxpr,
    itext) - default XML. Can also be a module that catches the incoming stag event
    stream and does something with it (for example, this could be a module you write
    yourself that transforms the stag events into HTML)
  type: string
  inputBinding:
    prefix: -w
outputs: []
cwlVersion: v1.1
baseCommand:
- stag-db.pl
