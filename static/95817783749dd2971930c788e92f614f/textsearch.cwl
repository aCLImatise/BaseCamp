class: CommandLineTool
id: textsearch.cwl
inputs:
- id: in_case_sensitive
  doc: boolean    [N] Do a case-sensitive search
  type: boolean?
  inputBinding:
    prefix: -casesensitive
- id: in_html
  doc: boolean    [N] Format output as an HTML table
  type: boolean?
  inputBinding:
    prefix: -html
- id: in_only
  doc: "boolean    [N] This is a way of shortening the command\nline if you only want\
    \ a few things to be\ndisplayed. Instead of specifying:\n'-nohead -noname -nousa\
    \ -noacc -nodesc'\nto get only the name output, you can specify\n'-only -name'"
  type: boolean?
  inputBinding:
    prefix: -only
- id: in_heading
  doc: boolean    [@(!$(only))] Display column headings
  type: boolean?
  inputBinding:
    prefix: -heading
- id: in_usa
  doc: boolean    [@(!$(only))] Display the USA of the
  type: boolean?
  inputBinding:
    prefix: -usa
- id: in_name
  doc: boolean    [@(!$(only))] Display 'name' column
  type: boolean?
  inputBinding:
    prefix: -name
- id: in_description
  doc: boolean    [@(!$(only))] Display 'description' column
  type: boolean?
  inputBinding:
    prefix: -description
- id: in_sequence
  doc: -accession          boolean    [@(!$(only))] Display 'accession' column
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
- textsearch
