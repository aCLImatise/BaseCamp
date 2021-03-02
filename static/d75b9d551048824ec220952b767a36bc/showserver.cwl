class: CommandLineTool
id: showserver.cwl
inputs:
- id: in_servername
  doc: "string     Name of a single server to give information\non (Any string)"
  type: boolean?
  inputBinding:
    prefix: -servername
- id: in_show_types
  doc: "menu       [*] Show type(s) (Values: Protein (Protein\nsequences); Nucleic\
    \ (Nucleotide sequences);\nSequence (Any sequence data); Protfeatures\n(Protein\
    \ features); Nucfeatures (Nucleotide\nfeatures); Features (Any feature table\n\
    data); Obo (OBO ontology data); Resource\n(Data resource); Taxonomy (Taxonomy\
    \ data);\nAssembly (Assembled short read data); Text\n(text data); Html (HTML\
    \ text data); Xml (XML\ntext data); Unknown (Unspecified datatype\nto be defined\
    \ for each database))"
  type: boolean?
  inputBinding:
    prefix: -showtypes
- id: in_html
  doc: boolean    [N] Format output as an HTML table
  type: boolean?
  inputBinding:
    prefix: -html
- id: in_full
  doc: boolean    [N] Display all columns
  type: boolean?
  inputBinding:
    prefix: -full
- id: in_methods
  doc: "boolean    [$(full)] This displays the access methods\nthat can be used on\
    \ this server, for all,\nquery or ID access"
  type: boolean?
  inputBinding:
    prefix: -methods
- id: in_fields
  doc: "boolean    [$(full)] This displays the search fields\nthat can be used on\
    \ this server, other than\nthe standard 'id' or 'acc' fields."
  type: boolean?
  inputBinding:
    prefix: -fields
- id: in_defined
  doc: "boolean    [$(full)] This displays a short name for the\nfile containing the\
    \ server definition"
  type: boolean?
  inputBinding:
    prefix: -defined
- id: in_server_version
  doc: boolean    [$(full)] Display 'version' column
  type: boolean?
  inputBinding:
    prefix: -serverversion
- id: in_sort_by
  doc: "menu       [type] Sort by (Values: defined (Definition\nfile short name);\
    \ type (Datatype))"
  type: boolean?
  inputBinding:
    prefix: -sortby
- id: in_outfile
  doc: outfile    [stdout] Output file name
  type: File?
  inputBinding:
    prefix: -outfile
- id: in_only
  doc: "toggle     [N] This is a way of shortening the command\nline if you only want\
    \ a few standard columns\nto be displayed. Instead of specifying:\n'-nohead -notype\
    \ -noid -noquery -noall'\nto get only the comment output, you can\nspecify\n'-only\
    \ -comment'"
  type: boolean?
  inputBinding:
    prefix: -only
- id: in_heading
  doc: boolean    [@(!$(only))] Display column headings
  type: boolean?
  inputBinding:
    prefix: -heading
- id: in_scope
  doc: boolean    [@(!$(only))] Display 'scope' column
  type: boolean?
  inputBinding:
    prefix: -scope
- id: in_type
  doc: boolean    [@(!$(only))] Display 'type' column
  type: boolean?
  inputBinding:
    prefix: -type
- id: in_id
  doc: boolean    [@(!$(only))] Display 'id' column
  type: boolean?
  inputBinding:
    prefix: -id
- id: in_query
  doc: boolean    [@(!$(only))] Display 'qry' column
  type: boolean?
  inputBinding:
    prefix: -query
- id: in_all
  doc: boolean    [@(!$(only))] Display 'all' column
  type: boolean?
  inputBinding:
    prefix: -all
- id: in_comment
  doc: boolean    [@(!$(only))] Display 'comment' column
  type: boolean?
  inputBinding:
    prefix: -comment
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: outfile    [stdout] Output file name
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints: []
cwlVersion: v1.1
baseCommand:
- showserver
