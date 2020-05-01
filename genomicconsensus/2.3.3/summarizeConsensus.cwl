#!/usr/bin/env cwl-runner

baseCommand:
- summarizeConsensus
class: CommandLineTool
cwlVersion: v1.0
id: summarizeconsensus
inputs:
- doc: Alignment summary GFF file
  id: alignment_summary
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
- doc: 'Input variants.gff or variants.gff.gz filename (default: None)'
  id: variants_gff
  inputBinding:
    prefix: --variantsGff
  type: string
- doc: 'Output alignment_summary.gff filename (default: None)'
  id: output
  inputBinding:
    prefix: --output
  type: string
