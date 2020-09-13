class: CommandLineTool
id: ../../../gffToBed.cwl
inputs:
- id: in_emit_tool_contract
  doc: 'Emit Tool Contract to stdout (default: False)'
  type: boolean
  inputBinding:
    prefix: --emit-tool-contract
- id: in_resolved_tool_contract
  doc: "Run Tool directly from a PacBio Resolved tool contract\n(default: None)"
  type: string
  inputBinding:
    prefix: --resolved-tool-contract
- id: in_log_file
  doc: "Write the log to file. Default(None) will write to\nstdout. (default: None)"
  type: File
  inputBinding:
    prefix: --log-file
- id: in_log_level
  doc: 'Set log level (default: INFO)'
  type: string
  inputBinding:
    prefix: --log-level
- id: in_debug
  doc: 'Alias for setting log level to DEBUG (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_quiet
  doc: "Alias for setting log level to CRITICAL to suppress\noutput. (default: False)"
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: 'Set the verbosity level. (default: None)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_name
  doc: 'track name to display in header (default: variants)'
  type: string
  inputBinding:
    prefix: --name
- id: in_description
  doc: "track description to display in header (default:\nPacBio: snps, insertions,\
    \ and deletions derived from\nconsensus calls against reference)"
  type: string
  inputBinding:
    prefix: --description
- id: in_use_score
  doc: "whether or not to use score for feature display\n(default: 0)\n"
  type: long
  inputBinding:
    prefix: --useScore
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gffToBed
