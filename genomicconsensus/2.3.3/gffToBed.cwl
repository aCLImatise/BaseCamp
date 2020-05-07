class: CommandLineTool
id: gffToBed.cwl
inputs:
- id: gff
  doc: GFF file
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
- id: name
  doc: 'track name to display in header (default: variants)'
  type: string
  inputBinding:
    prefix: --name
- id: description
  doc: 'track description to display in header (default: PacBio: snps, insertions,
    and deletions derived from consensus calls against reference)'
  type: string
  inputBinding:
    prefix: --description
- id: use_score
  doc: 'whether or not to use score for feature display (default: 0)'
  type: string
  inputBinding:
    prefix: --useScore
outputs: []
cwlVersion: v1.1
baseCommand:
- gffToBed
