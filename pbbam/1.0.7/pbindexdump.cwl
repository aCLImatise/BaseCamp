#!/usr/bin/env cwl-runner

baseCommand:
- pbindexdump
class: CommandLineTool
cwlVersion: v1.0
id: pbindexdump
inputs:
- doc: 'STR   Output format. Valid choices: (json, cpp). [json]'
  id: format
  inputBinding:
    prefix: --format
  type: boolean
- doc: INT   JSON indent level. [4]
  id: json_indent_level
  inputBinding:
    prefix: --json-indent-level
  type: boolean
- doc: Print fields in a layout that more closely reflects the PBI file format (per-field
    columns, not per-record objects.
  id: json_raw
  inputBinding:
    prefix: --json-raw
  type: boolean
