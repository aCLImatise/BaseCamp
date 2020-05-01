#!/usr/bin/env cwl-runner

baseCommand:
- gffToVcf
class: CommandLineTool
cwlVersion: v1.0
id: gfftovcf
inputs:
- doc: GFF file
  id: gff_file
  inputBinding:
    position: 0
  type: string
- doc: 'Emit Tool Contract to stdout (default: False)'
  id: emit_tool_contract
  inputBinding:
    prefix: --emit-tool-contract
  type: boolean
- doc: 'Run Tool directly from a PacBio Resolved tool contract (default: None)'
  id: resolved_tool_contract
  inputBinding:
    prefix: --resolved-tool-contract
  type: string
- doc: 'Write the log to file. Default(None) will write to stdout. (default: None)'
  id: log_file
  inputBinding:
    prefix: --log-file
  type: string
- doc: 'Set log level (default: ERROR)'
  id: log_level
  inputBinding:
    prefix: --log-level
  type: string
- doc: 'Alias for setting log level to DEBUG (default: False)'
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: 'Alias for setting log level to CRITICAL to suppress output. (default: False)'
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: 'Set the verbosity level. (default: None)'
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: 'Name of global reference to put in Meta field (default: None)'
  id: global_reference
  inputBinding:
    prefix: --globalReference
  type: string
