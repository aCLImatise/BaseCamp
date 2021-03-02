class: CommandLineTool
id: summary_from_stats.cwl
inputs:
- id: in_output
  doc: "Output summary to file instead of stderr. (default:\n<_io.TextIOWrapper name='<stderr>'\
    \ mode='w'\nencoding='ANSI_X3.4-1968'>)"
  type: File?
  inputBinding:
    prefix: --output
- id: in_percentiles
  doc: 'Percentiles for summary. (default: (10, 50, 90))'
  type: string[]
  inputBinding:
    prefix: --percentiles
- id: in_per_reference
  doc: "Also output a summary for each reference. (default:\nFalse)\n"
  type: boolean?
  inputBinding:
    prefix: --per_reference
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output summary to file instead of stderr. (default:\n<_io.TextIOWrapper name='<stderr>'\
    \ mode='w'\nencoding='ANSI_X3.4-1968'>)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- summary_from_stats
