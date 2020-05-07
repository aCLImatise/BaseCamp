class: CommandLineTool
id: tn93.cwl
inputs:
- id: fast_a
  doc: read sequences to compare from this file (default=stdin)
  type: string
  inputBinding:
    position: 0
- id: q
  doc: 'do not report progress updates and other diagnostics to stderr '
  type: boolean
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- tn93
