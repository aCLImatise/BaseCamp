class: CommandLineTool
id: summarizeConsensus.cwl
inputs:
- id: alignment_summary
  doc: Alignment summary GFF file
  type: string
  inputBinding:
    position: 0
- id: emit_tool_contract
  doc: 'Emit Tool Contract to stdout (default: False)'
  type: boolean
  inputBinding:
    prefix: --emit-tool-contract
- id: resolved_tool_contract
  doc: 'Run Tool directly from a PacBio Resolved tool contract (default: None)'
  type: string
  inputBinding:
    prefix: --resolved-tool-contract
- id: log_file
  doc: 'Write the log to file. Default(None) will write to stdout. (default: None)'
  type: string
  inputBinding:
    prefix: --log-file
- id: log_level
  doc: 'Set log level (default: ERROR)'
  type: string
  inputBinding:
    prefix: --log-level
- id: debug
  doc: 'Alias for setting log level to DEBUG (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: quiet
  doc: 'Alias for setting log level to CRITICAL to suppress output. (default: False)'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: 'Set the verbosity level. (default: None)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: variants_gff
  doc: 'Input variants.gff or variants.gff.gz filename (default: None)'
  type: string
  inputBinding:
    prefix: --variantsGff
- id: output
  doc: 'Output alignment_summary.gff filename (default: None)'
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- summarizeConsensus
