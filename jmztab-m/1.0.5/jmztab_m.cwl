class: CommandLineTool
id: jmztab_m.cwl
inputs:
- id: check
  doc: 'Example: -c /path/to/file.mztab. Check and validate the provided a mzTab file.'
  type: string
  inputBinding:
    prefix: --check
- id: from_json
  doc: 'Example: --fromJson. Will parse inFile as JSON and write mzTab representation
    to disk. Requires validation to be successful!'
  type: boolean
  inputBinding:
    prefix: --fromJson
- id: level
  doc: Choose validation level (Info, Warn, Error), default level is Info!
  type: string
  inputBinding:
    prefix: --level
- id: message
  doc: 'Example: -m 1002. Print validation message detail information based on error
    code.'
  type: boolean
  inputBinding:
    prefix: --message
- id: outfile
  doc: 'Example: -o "output.txt". Record validation messages into outfile. If not
    set, print validation messages to stdout/stderr.'
  type: string
  inputBinding:
    prefix: --outFile
- id: check_semantic
  doc: 'Example: -s /path/to/mappingFile.xml. Use the provided mapping file for semantic
    validation. If no mapping file is provided, the default one will be used. Requires
    an active internet connection!'
  type: string
  inputBinding:
    prefix: --checkSemantic
- id: to_json
  doc: 'Example: --toJson. Will write a json representation of inFile to disk. Requires
    validation to be successful!'
  type: boolean
  inputBinding:
    prefix: --toJson
outputs: []
cwlVersion: v1.1
baseCommand:
- jmztab-m
