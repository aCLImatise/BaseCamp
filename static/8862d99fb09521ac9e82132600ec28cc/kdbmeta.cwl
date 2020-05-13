class: CommandLineTool
id: kdbmeta.2.cwl
inputs:
- id: path_to_database
  doc: access database metadata
  type: File
  inputBinding:
    position: 0
- id: path_to_table
  doc: access table metadata
  type: File
  inputBinding:
    position: 1
- id: path_to_column
  doc: access column metadata
  type: File
  inputBinding:
    position: 2
- id: accession
  doc: sra global access id
  type: string
  inputBinding:
    position: 3
- id: table
  doc: 'table-name '
  type: string
  inputBinding:
    prefix: --table
- id: unsigned
  doc: 'print numeric values as unsigned '
  type: boolean
  inputBinding:
    prefix: --unsigned
- id: read_only
  doc: 'operate in read-only mode '
  type: boolean
  inputBinding:
    prefix: --read-only
- id: output
  doc: 'Output type: one of (xml text):  whether to  generate well-formed XML. Default:
    xml  (well-formed) '
  type: string
  inputBinding:
    prefix: --output
- id: ngc
  doc: 'path to ngc file '
  type: File
  inputBinding:
    prefix: --ngc
- id: log_level
  doc: 'Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug)
    or  (0-6) Current/default is warn '
  type: string
  inputBinding:
    prefix: --log-level
- id: verbose
  doc: 'Increase the verbosity of the program  status messages. Use multiple times
    for more  verbosity. Negates quiet. '
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: 'Turn off all status messages for the  program. Negated by verbose. '
  type: boolean
  inputBinding:
    prefix: --quiet
- id: option_file
  doc: 'Read more options and parameters from the  file. '
  type: File
  inputBinding:
    prefix: --option-file
outputs: []
cwlVersion: v1.1
baseCommand:
- kdbmeta.2
