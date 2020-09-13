class: CommandLineTool
id: ../../../gcloud_topic_formats.cwl
inputs:
- id: in_i_am_account
  doc: \
  type: boolean
  inputBinding:
    prefix: --iam-account
- id: in_project
  doc: \
  type: long
  inputBinding:
    prefix: --project
- id: in_format
  doc: ="table(name.scope(serviceAccounts).segment(0):label='se\
  type: boolean
  inputBinding:
    prefix: --format
- id: in_formats
  doc: "A format expression is used to change the default output format of a\ncommand.\
    \ Many output formats are available; some for pretty printing\nhuman-readable\
    \ output and others for returning machine-readable output.\nA format expression\
    \ has 3 parts:\nNAME\nname\nATTRIBUTES\n[ [no-]attribute-name[=value] [, ... ]\
    \ ]\nPROJECTION\n( resource-key [, ...] ) NAME is required, ATTRIBUTES are optional,\
    \ and\nPROJECTIONS may be required for some formats. Unknown attribute names\n\
    are silently ignored.\nEach gcloud list command has a default format expression.\
    \ The --format flag\ncan alter or replace the default. For example,\n--format='[box]'\n\
    adds box decorations to a default table, and\n--format=json\nlists the resource\
    \ in json format.\nThe formats and format specific attributes are:\nconfig\nA\
    \ dictionary of dictionaries in config style.\nThe format attributes are:\nexport\n\
    Display the dictionary as a list of system specific environment\nexport commands.\n\
    unset\nDisplay the dictionary as a list of system specific environment\nunset\
    \ commands.\ncsv\nComma Separated Values (http://www.ietf.org/rfc/rfc4180.txt)\
    \ with no\nkeys. This format requires a projection to define the values to be\n\
    printed.\nThe format attributes are:\ndelimiter=\"string\"\nThe string printed\
    \ between list value items, default \";\".\nno-heading\nDisables the initial key\
    \ name heading record.\nseparator=\"string\"\nThe string printed between values,\
    \ default \",\".\nterminator=\"string\"\nThe string printed after each record,\
    \ default \"\\n\" (newline).\ndefault\nAn alias for the yaml format.\ndiff\nA\
    \ unified diff of the first two projection columns.\nThe format attributes are:\n\
    format\nThe format of the diffed resources. Each resource is converted to\nthis\
    \ format and the diff of the converted resources is displayed.\nThe default is\
    \ 'flattened'.\ndisable\nDisables formatted output and does not consume the resources.\n\
    flattened\nA flattened tree. Each output line contains one key:value pair.\nThe\
    \ format attributes are:\nno-pad\nDon't print space after the separator. The default\
    \ adjusts the\nspace to align the values into the same output column. Use no-pad\n\
    for comparing resource outputs.\nseparator=SEPARATOR\nPrint SEPARATOR between\
    \ the key and value. The default is \": \".\nget\nEquivalent to the value[no-transforms]\
    \ format. Default transforms are\nnot applied to the displayed values.\njson\n\
    JSON (http://www.json.org), JavaScript Object Notation.\nThe format attributes\
    \ are:\nno-undefined\nDoes not display resource data items with null values.\n\
    list\nAn ordered list of items.\nThe format attributes are:\nalways-display-title\n\
    Display the title even if there are no records.\ncompact\nDisplay all items in\
    \ a record on one line.\nmulti\nEach projection key must have a subformat defined\
    \ by the\n:format=FORMAT-STRING attribute. For example,\n`--format=\"multi(data:format=json,\
    \ info:format='table[box](a, b, c)')\"`\nformats the data field as JSON and the\
    \ info field as a boxed table.\nnone\nDisables formatted output and consumes the\
    \ resources.\nobject\nBypasses JSON-serialization and prints the object representation\
    \ of\neach resource.\nThe format attributes are:\nseparator\nThe line printed\
    \ between resources.\nterminator\nThe line printed after each resource.\ntable\n\
    Aligned left-adjusted columns with optional title, column headings and\nsorting.\
    \ This format requires a projection to define the table columns.\nThe default\
    \ column headings are the disambiguated right hand components\nof the column keys\
    \ in ANGRY_SNAKE_CASE. For example, the projection\nkeys (first.name, last.name)\
    \ produce the default column heading\n('NAME', 'LAST_NAME').\nIf --page-size=N\
    \ is specified then output is grouped into tables with\nat most N rows. Headings,\
    \ alignment and sorting are done per-page. The\ntitle, if any, is printed before\
    \ the first table.\nThe format attributes are:\nbox\nPrints a box around the entire\
    \ table and each cell, including the\ntitle if any.\nformat=FORMAT-STRING\nPrints\
    \ the key data indented by 4 spaces using FORMAT-STRING which\ncan reference any\
    \ of the supported formats.\nno-heading\nDisables the column headings.\noptional\n\
    Does not display the column if it is empty.\npad=N\nSets the column horizontal\
    \ pad to N spaces. The default is 1 for\nbox, 2 otherwise.\ntitle=TITLE\nPrints\
    \ a centered TITLE at the top of the table, within the table\nbox if box is enabled.\n\
    text\nAn alias for the flattened format.\nvalue\nCSV with no heading and <TAB>\
    \ separator instead of <COMMA>. Used to\nretrieve individual resource values.\
    \ This format requires a projection\nto define the value(s) to be printed.\nThe\
    \ format attributes are:\ndelimiter=\"string\"\nThe string printed between list\
    \ value items, default \";\".\nquote\n\"...\" quote values that contain delimiter,\
    \ separator or terminator\nstrings.\nseparator=\"string\"\nThe string printed\
    \ between values, default \"\\t\" (tab).\nterminator=\"string\"\nThe string printed\
    \ after each record, default \"\\n\" (newline).\nyaml\nYAML (http://www.yaml.org),\
    \ YAML ain't markup language.\nThe format attributes are:\nnull=string\nDisplay\
    \ string instead of null for null/None values.\nno-undefined\nDoes not display\
    \ resource data items with null values.\nAll formats have these attributes:\n\
    disable\nDisables formatted output and does not consume the resources.\nprivate\n\
    Disables log file output. Use this for sensitive resource data that\nshould not\
    \ be displayed in log files. Explicit command line IO\nredirection overrides this\
    \ attribute."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- topic
- formats
