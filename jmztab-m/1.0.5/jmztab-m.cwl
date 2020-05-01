#!/usr/bin/env cwl-runner

baseCommand:
- jmztab-m
class: CommandLineTool
cwlVersion: v1.0
id: jmztab-m
inputs:
- doc: 'Example: -c /path/to/file.mztab. Check and validate the provided a mzTab file.'
  id: check
  inputBinding:
    prefix: --check
  type: string
- doc: 'Example: --fromJson. Will parse inFile as JSON and write mzTab representation
    to disk. Requires validation to be successful!'
  id: from_json
  inputBinding:
    prefix: --fromJson
  type: boolean
- doc: Choose validation level (Info, Warn, Error), default level is Info!
  id: level
  inputBinding:
    prefix: --level
  type: string
- doc: 'Example: -m 1002. Print validation message detail information based on error
    code.'
  id: message
  inputBinding:
    prefix: --message
  type: boolean
- doc: 'Example: -o "output.txt". Record validation messages into outfile. If not
    set, print validation messages to stdout/stderr.'
  id: outfile
  inputBinding:
    prefix: --outFile
  type: string
- doc: 'Example: -s /path/to/mappingFile.xml. Use the provided mapping file for semantic
    validation. If no mapping file is provided, the default one will be used. Requires
    an active internet connection!'
  id: check_semantic
  inputBinding:
    prefix: --checkSemantic
  type: string
- doc: 'Example: --toJson. Will write a json representation of inFile to disk. Requires
    validation to be successful!'
  id: to_json
  inputBinding:
    prefix: --toJson
  type: boolean
