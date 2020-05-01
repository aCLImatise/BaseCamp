#!/usr/bin/env cwl-runner

baseCommand:
- kdbmeta.2.10.3
class: CommandLineTool
cwlVersion: v1.0
id: kdbmeta.2.10.3
inputs:
- doc: access database metadata
  id: path_to_database
  inputBinding:
    position: 0
  type: File
- doc: access table metadata
  id: path_to_table
  inputBinding:
    position: 1
  type: File
- doc: access column metadata
  id: path_to_column
  inputBinding:
    position: 2
  type: File
- doc: sra global access id
  id: accession
  inputBinding:
    position: 3
  type: string
- doc: 'table-name '
  id: table
  inputBinding:
    prefix: --table
  type: string
- doc: 'print numeric values as unsigned '
  id: unsigned
  inputBinding:
    prefix: --unsigned
  type: boolean
- doc: 'operate in read-only mode '
  id: read_only
  inputBinding:
    prefix: --read-only
  type: boolean
- doc: 'Output type: one of (xml text):  whether to  generate well-formed XML. Default:
    xml  (well-formed) '
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: 'path to ngc file '
  id: ngc
  inputBinding:
    prefix: --ngc
  type: File
- doc: 'Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug)
    or  (0-6) Current/default is warn '
  id: log_level
  inputBinding:
    prefix: --log-level
  type: string
- doc: 'Increase the verbosity of the program  status messages. Use multiple times
    for more  verbosity. Negates quiet. '
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: 'Turn off all status messages for the  program. Negated by verbose. '
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: 'Read more options and parameters from the  file. '
  id: option_file
  inputBinding:
    prefix: --option-file
  type: File
