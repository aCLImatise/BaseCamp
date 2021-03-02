class: CommandLineTool
id: _showdb.cwl
inputs:
- id: in_database
  doc: "string     Name of a single database to give\ninformation on (Any string)"
  type: boolean?
  inputBinding:
    prefix: -database
- id: in_html
  doc: boolean    [N] Format output as an HTML table
  type: boolean?
  inputBinding:
    prefix: -html
- id: in_access
  doc: "boolean    [$(full)] This displays the levels of access\nthat can be used\
    \ on this database"
  type: boolean?
  inputBinding:
    prefix: -access
- id: in_methods
  doc: "boolean    [$(full)] This displays the access methods\nthat can be used on\
    \ this database, for all,\nquery or ID access"
  type: boolean?
  inputBinding:
    prefix: -methods
- id: in_tax_scope
  doc: "boolean    [$(full)] This displays the taxons covered\nby this database"
  type: boolean?
  inputBinding:
    prefix: -taxscope
- id: in_fields
  doc: "boolean    [$(full)] This displays the search fields\nthat can be used on\
    \ this database, including\nthe standard 'id' or 'acc' fields"
  type: boolean?
  inputBinding:
    prefix: -fields
- id: in_num_fields
  doc: "boolean    [$(full)] This displays the number of search\nfields that can be\
    \ used on this database,\nincluding the standard 'id' or 'acc' fields"
  type: boolean?
  inputBinding:
    prefix: -numfields
- id: in_aliases
  doc: "boolean    [$(full)] This displays the alias names that\ncan be used for this\
    \ database"
  type: boolean?
  inputBinding:
    prefix: -aliases
- id: in_num_aliases
  doc: "boolean    [$(full)] This displays the number of alias\nnames that can be\
    \ used for this database"
  type: boolean?
  inputBinding:
    prefix: -numaliases
- id: in_examples
  doc: "boolean    [$(full)] This displays the example queries\nthat can be used to\
    \ test this database"
  type: boolean?
  inputBinding:
    prefix: -examples
- id: in_num_examples
  doc: "boolean    [$(full)] This displays the number of\nexample queries that can\
    \ be used to test\nthis database"
  type: boolean?
  inputBinding:
    prefix: -numexamples
- id: in_defined
  doc: "boolean    [$(full)] This displays a short name for the\nfile containing the\
    \ database definition"
  type: boolean?
  inputBinding:
    prefix: -defined
- id: in_release
  doc: boolean    [$(full)] Display 'release' column
  type: boolean?
  inputBinding:
    prefix: -release
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
- id: in_type
  doc: boolean    [@(!$(only))] Display 'type' column
  type: boolean?
  inputBinding:
    prefix: -type
- id: in_id
  doc: boolean    [@(!$(only))] Display 'id' access column
  type: boolean?
  inputBinding:
    prefix: -id
- id: in_query
  doc: boolean    [@(!$(only))] Display 'qry' access column
  type: boolean?
  inputBinding:
    prefix: -query
- id: in_all
  doc: boolean    [@(!$(only))] Display 'all' access column
  type: boolean?
  inputBinding:
    prefix: -all
- id: in_comment
  doc: boolean    [@(!$(only))] Display 'comment' column
  type: boolean?
  inputBinding:
    prefix: -comment
- id: in_files
  doc: -full               boolean    [N] Display all columns
  type: string
  inputBinding:
    position: 0
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
- _showdb
